### createCollectionFromConfig

Create a collection from a vectors config written out in full: named vectors, multivectors, sparse vectors, and custom sharding, which createCollection's size and distance can't express. Like createCollection, it echoes the name it sent and is cleaned up by deleteCollection. Proven by plans/vectors/kinds.yaml.

**Adapter:** `createCollectionFromConfig`

**gRPC:** `qdrant.Collections/Create`

**Inputs:**

| Name | Type | Required | Default | Description | Examples |
|------|------|----------|---------|-------------|----------|
| collectionName | string | yes | aat-qdrant-{{random 8}} |  |  |
| vectorsConfig | VectorsConfig | no |  | A qdrant.VectorsConfig oneof: {params: {...}} or {paramsMap: {map: {...}}} |  |
| sparseVectorsConfig | SparseVectorConfig | no |  |  |  |
| shardingMethod | enum[Auto, Custom] | no |  |  | Auto, Custom |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| created | boolean |  |
| collectionName | string | (echoes input `collectionName`) |

**Provides data to:** collectionClusterInfo, countPoints, createAlias, createFieldIndex, createShardKey, createSnapshot, createVectorName, getCollection, jwtRbacGetCollection, jwtRbacUpsertPoints, jwtReadUpsertPoints, listCollectionAliases, listShardKeys, listSnapshots, readOnlyCountPoints, readOnlyUpsertPoints, restAnonGetCollection, restGetCollection, updateBatch, updateCollection, updateCollectionClusterSetup, updateStrictMode, upsertPoints

