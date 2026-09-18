### deleteVectors

Remove named vectors from points, keeping the points and their payloads. The unnamed vector is the one named "". Proven by plans/points/vectors.yaml.

**Adapter:** `deleteVectors`

**gRPC:** `qdrant.Points/DeleteVectors`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| ids | PointId[] | yes |  |  |
| vectorNames | string[] | yes | [""] |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| status | string |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

