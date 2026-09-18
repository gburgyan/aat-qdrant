### listCollectionAliases

A collection's aliases. Proven by plans/aliases/lifecycle.yaml.

**Adapter:** `listCollectionAliases`

**gRPC:** `qdrant.Collections/ListCollectionAliases`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| names | string[] |  |
| count | integer |  |

**Receives data from:** createCollection, createCollectionFromConfig

