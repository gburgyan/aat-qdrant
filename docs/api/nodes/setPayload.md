### setPayload

Merge values into points' payloads. With `key`, the values go under that key as a nested object instead of at the top level. Proven by plans/points/payload.yaml.

**Adapter:** `setPayload`

**gRPC:** `qdrant.Points/SetPayload`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| ids | PointId[] | yes |  |  |
| payload | Payload | yes |  | A map of Qdrant Value messages, as in a point's payload |
| key | string | no |  |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| status | string |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

