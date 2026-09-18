### wrongKeyListCollections

listCollections with a key Qdrant doesn't know, also UNAUTHENTICATED. Proven by plans/auth/keys.yaml.

**Adapter:** `listCollections`

**gRPC:** `qdrant.Collections/List`

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| names | string[] |  |
| count | integer |  |
| ourCount | integer |  |
| ours | string[] |  |

