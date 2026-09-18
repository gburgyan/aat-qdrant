### jwtRbacListCollections

listCollections with a JWT for one collection, which lists that collection alone rather than being refused. Proven by plans/auth/jwt.yaml.

**Adapter:** `listCollections`

**gRPC:** `qdrant.Collections/List`

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| names | string[] |  |
| count | integer |  |
| ourCount | integer |  |
| ours | string[] |  |

