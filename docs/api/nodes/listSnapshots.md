### listSnapshots

A collection's snapshots. For a collection that doesn't exist, NOT_FOUND. Proven by plans/snapshots/collection.yaml.

**Adapter:** `listSnapshots`

**gRPC:** `qdrant.Snapshots/List`

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

