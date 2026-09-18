### restGetPoint

GET /collections/{collection_name}/points/{id}: one point over REST. Its id is a plain number or string rather than a oneof, its payload plain JSON, and its unnamed vector a bare list under `vector`. Proven by plans/points/upsert-and-read.yaml.

**Adapter:** `restGetPoint`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| id | string | yes | 1 |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| id | integer |  |
| city | string |  |
| payload | Payload |  |
| vector | float[] |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

