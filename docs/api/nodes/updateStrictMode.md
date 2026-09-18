### updateStrictMode

Turn on a collection's strict mode, which refuses expensive requests (a limit over the maximum, a filter on an unindexed field) as INVALID_ARGUMENT and rate-limits reads as RESOURCE_EXHAUSTED, with a retry-after trailer. Proven by plans/limits/strict-mode.yaml.

**Adapter:** `updateStrictMode`

**gRPC:** `qdrant.Collections/Update`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| strictModeConfig | StrictModeConfig | yes |  | A qdrant.StrictModeConfig; enabled must be true for the rest to apply |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| updated | boolean |  |

**Receives data from:** createCollection, createCollectionFromConfig

