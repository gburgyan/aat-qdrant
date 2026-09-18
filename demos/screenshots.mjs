// Screenshots of the web UI for the README. Run by demos/run.sh against an
// `aat web` serving the runs the tapes recorded:
//
//   node demos/screenshots.mjs <base-url> <out-dir> <route>=<file> ...
//
// Each extra argument is a page to shoot, as
// <route>|<width>|<height>|<selector, tab:Label, click:Label, or wide>...=<file>.png.

import { chromium } from 'playwright';

const [baseURL, outDir, ...shots] = process.argv.slice(2);
if (!baseURL || !outDir || shots.length === 0) {
  console.error('usage: node demos/screenshots.mjs <base-url> <out-dir> <route>=<file> ...');
  process.exit(2);
}

async function getJSON(route) {
  const res = await fetch(new URL(route, baseURL));
  if (!res.ok) throw new Error(`GET ${route}: ${res.status}`);
  return res.json();
}

// A dark, high-density page whose clock is pinned, so relative times do not
// depend on how long the recording took.
async function newPage(browser, when, viewport) {
  const context = await browser.newContext({
    viewport,
    deviceScaleFactor: 2,
    colorScheme: 'dark',
    reducedMotion: 'reduce',
    locale: 'en-US',
    timezoneId: 'UTC',
  });
  await context.addInitScript(() => localStorage.setItem('aat:batchViewMode', 'tests'));
  const page = await context.newPage();
  if (when) await page.clock.setFixedTime(new Date(new Date(when).getTime() + 10_000));
  return page;
}

const browser = await chromium.launch();
try {
  for (const shot of shots) {
    const [spec, file] = shot.split('=');
    const [route, width, height, ...ready] = spec.split('|');
    const runId = route.split('/')[2];
    let when = null;
    try {
      const meta = route.startsWith('/batches/')
        ? await getJSON(`/api/batches/${runId}`)
        : await getJSON(`/api/runs/${runId}`);
      when = meta.timestamp;
    } catch { /* a page that needs no clock */ }

    const page = await newPage(browser, when, { width: Number(width), height: Number(height) });
    await page.goto(new URL(route, baseURL).href);
    for (const selector of ready) {
      // A "tab:Label" entry opens that tab instead of waiting for a selector.
      if (selector.startsWith('tab:')) {
        const tab = page.locator('.tab-button', { hasText: selector.slice(4) }).first();
        await tab.waitFor({ state: 'visible', timeout: 20_000 });
        await tab.click();
        continue;
      }
      // "wide" lifts the page's maximum width, for a table with more columns
      // than the page would otherwise show without scrolling.
      if (selector === 'wide') {
        // The matrix wrapper borrows the space right of the page column with a
        // negative margin, which would push it off a page that has no column.
        await page.addStyleTag({
          content: 'main { max-width: none !important; } .test-matrix-wrapper { margin-right: 0 !important; }',
        });
        continue;
      }
      // A "click:Label" entry presses the first button with that label.
      if (selector.startsWith('click:')) {
        const button = page.locator('button', { hasText: selector.slice(6) }).first();
        await button.waitFor({ state: 'visible', timeout: 20_000 });
        await button.click();
        // Leave no focus ring or hover state in the picture.
        await page.evaluate(() => document.activeElement?.blur());
        await page.mouse.move(0, 0);
        continue;
      }
      await page.locator(selector).first().waitFor({ state: 'visible', timeout: 20_000 });
    }
    // Let the last panel finish laying out.
    await page.waitForTimeout(800);
    await page.evaluate(() => document.fonts.ready);
    await page.screenshot({ path: `${outDir}/${file}` });
    console.log(`  ${file}`);
    await page.context().close();
  }
} finally {
  await browser.close();
}
