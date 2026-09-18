### listAliases

Every alias on the server. The transform counts this project's (named aat-qdrant-*), which the guard asserts is zero. Proven by plans/zz-guard/no-stray-aliases.yaml.

**Adapter:** `listAliases`

**gRPC:** `qdrant.Collections/ListAliases`

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| names | string[] |  |
| count | integer |  |
| ourCount | integer |  |

