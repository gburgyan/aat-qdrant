### deleteSnapshot

Delete a collection snapshot; the cleanup for createSnapshot. Proven by plans/snapshots/collection.yaml.

**Adapter:** `deleteSnapshot`

**gRPC:** `qdrant.Snapshots/Delete`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| snapshotName | string | yes | from: createSnapshot.snapshotName |  |

