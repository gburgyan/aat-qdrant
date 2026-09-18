### searchBatch

Several searches in one call (deprecated; QueryBatch does this). Each names the collection again. Proven by plans/query/batches.yaml.

**Adapter:** `searchBatch`

**gRPC:** `qdrant.Points/SearchBatch`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| searches | SearchItem[] | yes |  | Each {vector, limit} |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| batches | NumLists | For each request in the batch, the numeric ids it found, best first |
| count | integer |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

