### jwtRbacDeleteCollection

deleteCollection with a read-write JWT for that very collection, which is still PERMISSION_DENIED: deleting a collection needs global access. Proven by plans/auth/jwt.yaml.

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

