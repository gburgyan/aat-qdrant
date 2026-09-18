### countPoints

Count points, all of them or those a filter matches. The count is a uint64, so it arrives as a string. Proven by plans/points/delete-and-count.yaml.

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

