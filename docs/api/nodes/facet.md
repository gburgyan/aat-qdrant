### facet

Count points by the values of a payload field. It needs an index on the field that supports exact matches, such as a keyword index, and says so when there is none. Hits are ordered by count, then by value. Proven by plans/query/facet.yaml.

**Adapter:** `facet`

**gRPC:** `qdrant.Points/Facet`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| key | string | yes | country |  |
| limit | integer | yes | 10 |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| values | string[] |  |
| counts | integer[] |  |
| count | integer |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

