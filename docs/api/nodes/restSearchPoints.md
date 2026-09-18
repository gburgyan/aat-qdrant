### restSearchPoints

POST /collections/{collection_name}/points/search, the REST search that v1.19's OpenAPI spec no longer lists. The server still answers it, so this node has no operationId to be checked against. Proven by drift/deprecated-rest-search.yaml.

**Adapter:** `restSearchPoints`

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

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

