### createFieldIndex

Index a payload field, which filters, facets, and ordered scrolls use. The field type is an enum whose zero value, FieldTypeKeyword, has to be written out, because the field is optional. Proven by plans/points/indexes.yaml.

**Adapter:** `createFieldIndex`

**gRPC:** `qdrant.Points/CreateFieldIndex`

**Inputs:**

| Name | Type | Required | Default | Description | Examples |
|------|------|----------|---------|-------------|----------|
| collectionName | string | yes | from: createCollection.collectionName |  |  |
| fieldName | string | yes | city |  |  |
| fieldType | enum[FieldTypeKeyword, FieldTypeInteger, FieldTypeFloat, FieldTypeGeo, FieldTypeText, FieldTypeBool, FieldTypeDatetime, FieldTypeUuid] | yes | FieldTypeKeyword |  | FieldTypeKeyword, FieldTypeInteger, FieldTypeFloat, FieldTypeGeo, FieldTypeText, FieldTypeBool, FieldTypeDatetime, FieldTypeUuid |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| status | string |  |
| fieldName | string | (echoes input `fieldName`) |

**Receives data from:** createCollection, createCollectionFromConfig

