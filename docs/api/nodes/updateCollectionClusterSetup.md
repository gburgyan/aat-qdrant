### updateCollectionClusterSetup

Change a collection's cluster layout. The operation is a oneof; this node sends its shard-key members. On a standalone node it is UNIMPLEMENTED. Proven by plans/cluster/standalone.yaml and cluster/shard-keys.yaml.

**Adapter:** `updateCollectionClusterSetup`

**gRPC:** `qdrant.Collections/UpdateCollectionClusterSetup`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| createKey | string | no |  | A keyword shard key to create |
| deleteKey | string | no |  | A keyword shard key to delete |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| done | boolean |  |

**Receives data from:** createCollection, createCollectionFromConfig

