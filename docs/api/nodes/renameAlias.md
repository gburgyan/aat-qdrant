### renameAlias

Rename an alias. Its cleanup deletes the new name; the old one's cleanup finds nothing to delete, which Qdrant answers with success. Proven by plans/aliases/lifecycle.yaml.

**Adapter:** `renameAlias`

**gRPC:** `qdrant.Collections/UpdateAliases`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| oldAliasName | string | yes | from: createAlias.aliasName |  |
| aliasName | string | yes | aat-qdrant-alias-{{random 8}} | The new name |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| done | boolean |  |
| aliasName | string | (echoes input `aliasName`) |

**Receives data from:** createAlias

