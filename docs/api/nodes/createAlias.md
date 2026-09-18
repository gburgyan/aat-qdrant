### createAlias

Give a collection a second name that reads and writes go through. Creating an alias that already exists succeeds again. Proven by plans/aliases/lifecycle.yaml.

**Adapter:** `createAlias`

**gRPC:** `qdrant.Collections/UpdateAliases`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| aliasName | string | yes | aat-qdrant-alias-{{random 8}} |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| done | boolean |  |
| aliasName | string | (echoes input `aliasName`) |

**Provides data to:** renameAlias

**Receives data from:** createCollection, createCollectionFromConfig

