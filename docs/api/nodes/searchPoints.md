### searchPoints

Nearest neighbours of a vector (deprecated; Query does this). Proven by plans/query/nearest.yaml.

**Adapter:** `searchPoints`

**gRPC:** `qdrant.Points/Search`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| vector | float[] | yes |  |  |
| limit | integer | yes | 3 |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| nums | string[] | The numeric ids of the points found, best first (uint64s, so strings) |
| ids | PointId[] |  |
| scores | float[] |  |
| cities | string[] |  |
| count | integer |  |
| topScore | float |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

