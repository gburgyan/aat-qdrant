### queryPoints

The universal query: nearest neighbours of a vector or a point, a recommendation, discovery, a fusion of prefetched results, and more, each a member of the Query oneof. Without a query it lists points in id order. A fusion is {"fusion": "RRF"}, the enum's zero value, sent because it is a oneof member. Scores are float32, so assert them as ranges. Proven by plans/query/nearest.yaml.

**Adapter:** `queryPoints`

**gRPC:** `qdrant.Points/Query`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| query | Query | no |  | A qdrant.Query in proto3 JSON, such as {nearest: {dense: {data: [...]}}} |
| prefetch | PrefetchQuery[] | no |  |  |
| filter | Filter | no |  |  |
| using | string | no |  | Which named vector to search; a collection with only named vectors needs one |
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

