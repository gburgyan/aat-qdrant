### updateAliases

Apply several alias actions at once, each an AliasOperations oneof (createAlias, renameAlias, deleteAlias), atomically: the way to point an alias at a new collection with no moment in which it points nowhere. Proven by plans/aliases/blue-green.yaml.

**Adapter:** `updateAliases`

**gRPC:** `qdrant.Collections/UpdateAliases`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| actions | AliasOperations[] | yes |  |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| done | boolean |  |

