### discoverBatch

Several discoveries in one call (deprecated). Each names the collection again. Proven by plans/query/batches.yaml.

**Adapter:** `discoverBatch`

**gRPC:** `qdrant.Points/DiscoverBatch`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| discoveries | DiscoverItem[] | yes |  | Each {target, context, limit} |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| batches | NumLists | For each request in the batch, the numeric ids it found, best first |
| count | integer |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

