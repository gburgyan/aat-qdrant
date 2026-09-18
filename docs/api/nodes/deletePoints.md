### deletePoints

Delete points, chosen either by id or by a filter: the request's selector is a oneof. Proven by plans/points/delete-and-count.yaml.

**Adapter:** `deletePoints`

**gRPC:** `qdrant.Points/Delete`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| ids | PointId[] | no |  |  |
| filter | Filter | no |  |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| status | string |  |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

