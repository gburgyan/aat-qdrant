### readOnlyCountPoints

countPoints with the read-only key. Proven by plans/auth/read-only-key.yaml.

**Adapter:** `countPoints`

**gRPC:** `qdrant.Points/Count`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| filter | Filter | no |  |  |
| shardKey | string | no |  | Count only the points under this shard key |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| count | integer |  |

**Receives data from:** createCollection, createCollectionFromConfig

