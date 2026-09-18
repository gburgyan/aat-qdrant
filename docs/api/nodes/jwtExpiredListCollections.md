### jwtExpiredListCollections

listCollections with an expired JWT, which is PERMISSION_DENIED, not UNAUTHENTICATED: Qdrant reads a token it can verify but won't honour as forbidden. Proven by plans/auth/jwt.yaml.

**Adapter:** `listCollections`

**gRPC:** `qdrant.Collections/List`

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| names | string[] |  |
| count | integer |  |
| ourCount | integer |  |
| ours | string[] |  |

