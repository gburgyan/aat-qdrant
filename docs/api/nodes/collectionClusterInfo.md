### collectionClusterInfo

A collection's shards and where they live. On a standalone node it is one local shard, shard 0, which proto3 JSON writes as a present 0. Proven by plans/cluster/standalone.yaml.

**Adapter:** `collectionClusterInfo`

**gRPC:** `qdrant.Collections/CollectionClusterInfo`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| peerId | string |  |
| shardCount | integer |  |
| shardIds | integer[] |  |
| shardKeys | string[] |  |
| pointsCounts | string[] |  |

**Receives data from:** createCollection, createCollectionFromConfig

