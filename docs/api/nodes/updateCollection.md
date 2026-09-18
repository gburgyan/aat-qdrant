### updateCollection

Change a collection's optimizer settings and metadata in place. Metadata is merged: a key the update doesn't name keeps its value. Proven by plans/collections/update-optimizers.yaml.

**Adapter:** `updateCollection`

**gRPC:** `qdrant.Collections/Update`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| indexingThreshold | integer | yes | 20000 | Vectors a segment holds before Qdrant builds its HNSW index, in kilobytes |
| note | string | yes | updated by aat-qdrant | Written to the collection's metadata as `note` |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| updated | boolean |  |

**Receives data from:** createCollection, createCollectionFromConfig

