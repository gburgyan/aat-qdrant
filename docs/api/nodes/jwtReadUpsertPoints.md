### jwtReadUpsertPoints

upsertPoints with a global read-only JWT, which is PERMISSION_DENIED. Proven by plans/auth/jwt.yaml.

**Adapter:** `upsertPoints`

**gRPC:** `qdrant.Points/Upsert`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| points | PointStruct[] | yes | [… 6 items] |  |
| wait | boolean | yes | true |  |
| shardKey | string | no |  | The shard key to write to, which a custom-sharded collection requires |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| status | string | Completed, or Acknowledged when the write was not waited for |
| operationId | integer |  |

**Provides data to:** clearPayload, deletePayload, deletePoints, deleteVectors, discoverBatch, discoverPoints, facet, getPoints, overwritePayload, queryBatch, queryGroups, queryPoints, recommendBatch, recommendGroups, recommendPoints, restGetPoint, restQueryPoints, restSearchPoints, scrollPoints, searchBatch, searchGroups, searchMatrixOffsets, searchMatrixPairs, searchPoints, setPayload, updateVectors

**Receives data from:** createCollection, createCollectionFromConfig

