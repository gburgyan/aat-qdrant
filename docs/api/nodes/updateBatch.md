### updateBatch

Apply several point operations in one call, in order. Each operation is a oneof (upsert, setPayload, deletePoints, ...), and each gets its own result. Proven by plans/points/update-batch.yaml.

**Adapter:** `updateBatch`

**gRPC:** `qdrant.Points/UpdateBatch`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| operations | PointsUpdateOperation[] | yes |  |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| statuses | string[] |  |
| count | integer |  |

**Receives data from:** createCollection, createCollectionFromConfig

