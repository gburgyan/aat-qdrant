### createCollection

Create a collection of dense vectors. The name is the client's to choose and Qdrant answers only `result: true`, so the name comes back as an output echoed from the input. Every collection this project creates is named aat-qdrant-*, which is what the guard looks for, and carries `project: aat-qdrant` in its metadata. Proven by plans/collections/lifecycle.yaml.

**Adapter:** `createCollection`

**gRPC:** `qdrant.Collections/Create`

**Inputs:**

| Name | Type | Required | Default | Description | Examples |
|------|------|----------|---------|-------------|----------|
| collectionName | string | yes | aat-qdrant-{{random 8}} |  |  |
| vectorSize | integer | yes | 4 | Dimensions of every vector in the collection |  |
| distance | enum[Cosine, Euclid, Dot, Manhattan] | yes | Cosine |  | Cosine, Euclid, Dot, Manhattan |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| created | boolean |  |
| collectionName | string | (echoes input `collectionName`) |
| distance | string | The distance the collection was created with, which a layer may have chosen (echoes input `distance`) |

**Provides data to:** collectionClusterInfo, countPoints, createAlias, createFieldIndex, createShardKey, createSnapshot, createVectorName, getCollection, jwtRbacGetCollection, jwtRbacUpsertPoints, jwtReadUpsertPoints, listCollectionAliases, listShardKeys, listSnapshots, readOnlyCountPoints, readOnlyUpsertPoints, restAnonGetCollection, restGetCollection, updateBatch, updateCollection, updateCollectionClusterSetup, updateStrictMode, upsertPoints

