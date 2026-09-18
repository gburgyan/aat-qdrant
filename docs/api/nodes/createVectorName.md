### createVectorName

Add a named dense vector to an existing collection. On a collection that had one unnamed vector, the collection's config becomes a map of named vectors, in which the unnamed one is named "". Proven by plans/points/vectors.yaml.

**Adapter:** `createVectorName`

**gRPC:** `qdrant.Points/CreateVectorName`

**Inputs:**

| Name | Type | Required | Default | Description | Examples |
|------|------|----------|---------|-------------|----------|
| collectionName | string | yes | from: createCollection.collectionName |  |  |
| vectorName | string | yes | extra |  |  |
| size | integer | yes | 2 |  |  |
| distance | enum[Cosine, Euclid, Dot, Manhattan] | yes | Euclid |  | Cosine, Euclid, Dot, Manhattan |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| status | string |  |
| vectorName | string | (echoes input `vectorName`) |

**Receives data from:** createCollection, createCollectionFromConfig

