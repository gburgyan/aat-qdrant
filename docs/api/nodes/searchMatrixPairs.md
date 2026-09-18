### searchMatrixPairs

For a sample of points, each one's nearest neighbours, as pairs. Proven by plans/query/matrix.yaml.

**Adapter:** `searchMatrixPairs`

**gRPC:** `qdrant.Points/SearchMatrixPairs`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| sample | integer | yes | 6 |  |
| limit | integer | yes | 1 |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| count | integer |  |
| aNums | string[] |  |
| bNums | string[] |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

