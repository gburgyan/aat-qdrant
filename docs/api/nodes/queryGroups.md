### queryGroups

A query whose results are grouped by a payload field, a few hits per group. A group's key is a GroupId oneof. Proven by plans/query/groups.yaml.

**Adapter:** `queryGroups`

**gRPC:** `qdrant.Points/QueryGroups`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| query | Query | yes |  |  |
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

