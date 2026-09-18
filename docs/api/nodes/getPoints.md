### getPoints

Read points by id. An id with no point is not an error: it is left out of the result. Proven by plans/points/upsert-and-read.yaml.

**Adapter:** `getPoints`

**gRPC:** `qdrant.Points/Get`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| ids | PointId[] | yes | [{"num":"1"}] |  |
| withVectors | boolean | yes | false |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| count | integer |  |
| ids | PointId[] |  |
| cities | string[] |  |
| firstPayload | Payload |  |
| firstVector | float[] | The first point's unnamed dense vector, when it has one and withVectors is set |
| firstNamedVectors | NamedVectors | The first point's named vectors, when it has them and withVectors is set |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

