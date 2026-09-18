### listShardKeys

A collection's shard keys. On a standalone node the answer is an empty list, not an error. Proven by plans/cluster/standalone.yaml.

**Adapter:** `listShardKeys`

**gRPC:** `qdrant.Collections/ListShardKeys`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| keys | string[] |  |
| count | integer |  |

**Receives data from:** createCollection, createCollectionFromConfig

