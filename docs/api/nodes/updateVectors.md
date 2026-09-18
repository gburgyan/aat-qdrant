### updateVectors

Replace the vectors of existing points, leaving their payloads alone. Proven by plans/points/vectors.yaml.

**Adapter:** `updateVectors`

**gRPC:** `qdrant.Points/UpdateVectors`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| points | PointVectors[] | yes |  | Each a qdrant.PointVectors in proto3 JSON, an id and its new vectors |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| status | string |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

