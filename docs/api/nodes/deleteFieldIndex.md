### deleteFieldIndex

Drop a payload field's index; the cleanup for createFieldIndex. Proven by plans/points/indexes.yaml.

**Adapter:** `deleteFieldIndex`

**gRPC:** `qdrant.Points/DeleteFieldIndex`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| fieldName | string | yes | from: createFieldIndex.fieldName |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| status | string |  |

