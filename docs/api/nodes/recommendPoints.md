### recommendPoints

Points like some and unlike others (deprecated; a recommend query does this). Proven by plans/query/recommend-and-discover.yaml.

**Adapter:** `recommendPoints`

**gRPC:** `qdrant.Points/Recommend`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| positive | PointId[] | yes |  |  |
| negative | PointId[] | yes | [] |  |
| limit | integer | yes | 2 |  |

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

