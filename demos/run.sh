#!/usr/bin/env bash
# Regenerates the README's web UI screenshots against the local Qdrant: the
# layer grid, a gRPC request, and a rate-limited response with its trailers.
#
# Usage:
#   demos/run.sh
#
# Needs: aat 0.3.0 or later on PATH, Docker, jq, and node and npm with
# Playwright's Chromium. It uses port 9131 for the web UI. The limits plan
# waits out nothing here: the screenshot is of the refusal, not of the retry.
#
# Every run is checked against the archive it produced before a screenshot of
# it is taken: a picture of a failed run is not evidence of anything.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
demos="$root/demos"
out="$demos/out"
images="$root/docs/images"
web_port=9131

step() { printf '\n==> %s\n' "$*" >&2; }
die() { printf 'error: %s\n' "$*" >&2; exit 1; }

command -v aat >/dev/null || die "aat is not on PATH"
command -v jq >/dev/null || die "jq is not on PATH"
unset NO_COLOR AAT_PROJECT AAT_ENV_NAME AAT_HOST

mkdir -p "$out" "$images"

step "Playwright"
(cd "$demos" && npm install --silent && npx --yes playwright install chromium >/dev/null)

cd "$root"
step "Qdrant"
scripts/up.sh

# run NAME ARGS...: run aat with --json, require a pass, and print the archive's id.
run() {
  local name="$1"; shift
  aat "$@" --env local --json >"$out/$name.json" || die "$name: aat exited $?"
  [ "$(jq -r '.outcome' "$out/$name.json")" = "passed" ] || die "$name: outcome $(jq -r '.outcome' "$out/$name.json")"
  basename "$(dirname "$(jq -r '.archive_path' "$out/$name.json")")"
}

step "The runs"
query_run="$(run query run plan query/nearest)"
limits_run="$(run limits run plan limits/strict-mode)"
aat run batch matrix --env local --parallel 4 --json \
  --layer-group distance-cosine,distance-dot,distance-euclid,distance-manhattan \
  --layer-group id-num,id-uuid >"$out/matrix.json" || die "matrix: aat exited $?"
[ "$(jq -r '.outcome' "$out/matrix.json")" = "passed" ] || die "matrix: outcome $(jq -r '.outcome' "$out/matrix.json")"
matrix_batch="$(jq -r '.batch_id' "$out/matrix.json")"

step "Web UI on :$web_port"
aat web --port "$web_port" >"$out/web.log" 2>&1 &
web_pid=$!
trap 'kill "$web_pid" 2>/dev/null || true' EXIT
until curl -sf "http://localhost:$web_port/api/runs" >/dev/null; do sleep 0.3; done

step "Screenshots"
node "$demos/screenshots.mjs" "http://localhost:$web_port" "$images" \
  "/batches/$matrix_batch|1900|600|table.test-matrix|wide=ui-matrix.png" \
  "/runs/$query_run/steps/filtered|1180|1130|.step-detail-header|tab:Request|click:Expand=ui-grpc-request.png" \
  "/runs/$limits_run/steps/limited|1180|690|.step-detail-header|tab:Response=ui-grpc-refusal.png"

step "Done"
ls -lh "$images"
