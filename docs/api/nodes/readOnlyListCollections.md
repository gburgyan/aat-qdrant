### readOnlyListCollections

listCollections with the read-only key, which reads freely. Proven by plans/auth/read-only-key.yaml.

**Adapter:** `listCollections`

**gRPC:** `qdrant.Collections/List`

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| names | string[] |  |
| count | integer |  |
| ourCount | integer |  |
| ours | string[] |  |

