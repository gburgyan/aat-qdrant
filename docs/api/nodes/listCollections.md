### listCollections

List every collection on the server. The transform counts this project's (named aat-qdrant-*), which is what the guard asserts is zero. Proven by plans/zz-guard/no-stray-collections.yaml.

**Adapter:** `listCollections`

**gRPC:** `qdrant.Collections/List`

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| names | string[] |  |
| count | integer |  |
| ourCount | integer |  |
| ours | string[] |  |

