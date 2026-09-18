### deletePayload

Remove payload keys from points. Proven by plans/points/payload.yaml.

**Adapter:** `deletePayload`

**gRPC:** `qdrant.Points/DeletePayload`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| ids | PointId[] | yes |  |  |
| keys | string[] | yes |  |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| status | string |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

