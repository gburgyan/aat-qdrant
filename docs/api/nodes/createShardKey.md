### createShardKey

Add a keyword shard key to a custom-sharded collection. It needs cluster mode: on a standalone node it is UNIMPLEMENTED. Proven by cluster/shard-keys.yaml.

**Adapter:** `createShardKey`

**gRPC:** `qdrant.Collections/CreateShardKey`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| shardKey | string | yes | eu |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| created | boolean |  |
| shardKey | string | (echoes input `shardKey`) |

**Receives data from:** createCollection, createCollectionFromConfig

