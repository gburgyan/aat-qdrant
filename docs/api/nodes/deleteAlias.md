### deleteAlias

Remove an alias, leaving its collection. Removing one that doesn't exist also succeeds. The cleanup for createAlias and renameAlias. Proven by plans/aliases/lifecycle.yaml.

**Adapter:** `deleteAlias`

**gRPC:** `qdrant.Collections/UpdateAliases`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| aliasName | string | yes | from: createAlias.aliasName |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| done | boolean |  |

