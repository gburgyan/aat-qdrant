### discoverPoints

Points near a target and on the positive side of context pairs (deprecated; a discover query does this). The target is a TargetVector whose only oneof member is `single`. Proven by plans/query/recommend-and-discover.yaml.

**Adapter:** `discoverPoints`

**gRPC:** `qdrant.Points/Discover`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| target | VectorExample | yes |  |  |
| context | ContextExamplePair[] | yes |  |  |
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

