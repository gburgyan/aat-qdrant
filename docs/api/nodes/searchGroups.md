### searchGroups

Nearest neighbours grouped by a payload field (deprecated; QueryGroups does this). Proven by plans/query/groups.yaml.

**Adapter:** `searchGroups`

**gRPC:** `qdrant.Points/SearchGroups`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| vector | float[] | yes |  |  |
| groupBy | string | yes | country |  |
| groupSize | integer | yes | 1 |  |
| limit | integer | yes | 2 |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| groupIds | string[] | Each group's key, a GroupId oneof read as its string value |
| hitNums | NumLists | The numeric ids in each group, best first |
| count | integer |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

