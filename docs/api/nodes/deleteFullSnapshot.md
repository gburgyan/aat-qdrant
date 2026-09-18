### deleteFullSnapshot

Delete a full snapshot; the cleanup for createFullSnapshot. Proven by plans/snapshots/full.yaml.

**Adapter:** `deleteFullSnapshot`

**gRPC:** `qdrant.Snapshots/DeleteFull`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| snapshotName | string | yes | from: createFullSnapshot.snapshotName |  |

