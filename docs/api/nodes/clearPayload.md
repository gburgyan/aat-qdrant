### clearPayload

Remove every payload key from points. Proven by plans/points/payload.yaml.

**Adapter:** `clearPayload`

**gRPC:** `qdrant.Points/ClearPayload`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| ids | PointId[] | yes |  |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| status | string |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

