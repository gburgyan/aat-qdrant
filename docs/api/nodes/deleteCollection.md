### deleteCollection

Delete a collection and everything in it; the cleanup for createCollection. Deleting one that doesn't exist answers `result: false` rather than NOT_FOUND. Proven by plans/collections/lifecycle.yaml.

**Adapter:** `deleteCollection`

**gRPC:** `qdrant.Collections/Delete`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| deleted | boolean |  |

