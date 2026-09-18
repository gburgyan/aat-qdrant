### searchMatrixOffsets

The same matrix as searchMatrixPairs, as a sparse matrix: row and column offsets into a list of ids, and a score for each. Proven by plans/query/matrix.yaml.

**Adapter:** `searchMatrixOffsets`

**gRPC:** `qdrant.Points/SearchMatrixOffsets`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| sample | integer | yes | 6 |  |
| limit | integer | yes | 1 |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| offsetsRow | string[] |  |
| offsetsCol | string[] |  |
| idNums | string[] |  |
| scores | float[] |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

