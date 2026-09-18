### getCollection

Read a collection's status and configuration. Over gRPC the status is the enum name, `Green`; over REST it is `green`. Proven by plans/collections/lifecycle.yaml.

**Adapter:** `getCollection`

**gRPC:** `qdrant.Collections/Get`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| status | string | Green, Yellow, Grey, or Red |
| pointsCount | integer |  |
| segmentsCount | integer |  |
| vectorSize | integer | The unnamed vector's size, when the collection has only that one |
| distance | string |  |
| vectorNames | string[] | The names in a collection's vector map, sorted. A collection with one unnamed vector has none; once a named vector is added, the unnamed one is listed as "". |
| indexingThreshold | integer |  |
| payloadSchema | string[] | The payload fields that have an index, sorted |
| project | string | The project tag in the collection's metadata |
| note | string | The note tag in the collection's metadata, which updateCollection sets |

**Receives data from:** createCollection, createCollectionFromConfig

