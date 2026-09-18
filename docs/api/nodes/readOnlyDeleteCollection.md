### readOnlyDeleteCollection

deleteCollection with the read-only key, which is PERMISSION_DENIED. Proven by plans/auth/read-only-key.yaml.

**Adapter:** `deleteCollection`

**gRPC:** `qdrant.Collections/Delete`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| deleted | boolean |  |

