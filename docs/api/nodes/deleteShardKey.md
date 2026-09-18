### deleteShardKey

Remove a shard key and its shards; the cleanup for createShardKey. Proven by cluster/shard-keys.yaml.

**Adapter:** `deleteShardKey`

**gRPC:** `qdrant.Collections/DeleteShardKey`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| shardKey | string | yes | from: createShardKey.shardKey |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| deleted | boolean |  |

