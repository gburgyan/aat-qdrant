### restQueryPoints

POST /collections/{collection_name}/points/query: the nearest-neighbour query over REST, where the query is a bare list of numbers rather than a Query oneof, and the points sit under result.points. Proven by plans/query/nearest.yaml.

**Adapter:** `restQueryPoints`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| vector | float[] | yes |  |  |
| limit | integer | yes | 3 |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| ids | integer[] |  |
| scores | float[] |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

