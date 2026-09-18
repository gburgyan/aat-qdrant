### overwritePayload

Replace points' payloads outright: a key the new payload doesn't have is gone. Proven by plans/points/payload.yaml.

**Adapter:** `overwritePayload`

**gRPC:** `qdrant.Points/OverwritePayload`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| ids | PointId[] | yes |  |  |
| payload | Payload | yes |  |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| status | string |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

