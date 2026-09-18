### restGetCollection

GET /collections/{collection_name}: the collection getCollection reads, over REST. The status is lowercase here, sizes are JSON numbers rather than strings, and metadata values are plain JSON rather than Qdrant's Value messages. Proven by plans/collections/lifecycle.yaml.

**Adapter:** `restGetCollection`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| status | string |  |
| vectorSize | integer |  |
| distance | string |  |
| project | string |  |

**Receives data from:** createCollection, createCollectionFromConfig

