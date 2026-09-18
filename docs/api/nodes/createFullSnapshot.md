### createFullSnapshot

Snapshot the whole storage, every collection. A full snapshot outlives the collections in it, so it needs a cleanup of its own. Proven by plans/snapshots/full.yaml.

**Adapter:** `createFullSnapshot`

**gRPC:** `qdrant.Snapshots/CreateFull`

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| snapshotName | string |  |
| creationTime | datetime |  |
| size | integer |  |

