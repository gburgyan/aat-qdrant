### createSnapshot

Snapshot one collection. The description's creationTime is a google.protobuf.Timestamp, which arrives as an RFC 3339 string, and its size an int64, as a string. Proven by plans/snapshots/collection.yaml.

**Adapter:** `createSnapshot`

**gRPC:** `qdrant.Snapshots/Create`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| snapshotName | string |  |
| creationTime | datetime |  |
| size | integer |  |
| checksum | string |  |

**Receives data from:** createCollection, createCollectionFromConfig

