### recommendBatch

Several recommendations in one call (deprecated). Each names the collection again. Proven by plans/query/batches.yaml.

**Adapter:** `recommendBatch`

**gRPC:** `qdrant.Points/RecommendBatch`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| recommendations | RecommendItem[] | yes |  | Each {positive, limit} |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| batches | NumLists | For each request in the batch, the numeric ids it found, best first |
| count | integer |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

