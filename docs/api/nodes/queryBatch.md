### queryBatch

Several queries in one call, each answered on its own. Every query in the batch has to name the collection again: the template writes it into each. Proven by plans/query/batches.yaml.

**Adapter:** `queryBatch`

**gRPC:** `qdrant.Points/QueryBatch`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| queries | QueryItem[] | yes |  | Each {query, limit}, as queryPoints takes them |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| batches | NumLists | For each request in the batch, the numeric ids it found, best first |
| count | integer |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

