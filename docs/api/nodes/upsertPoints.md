### upsertPoints

Insert or replace points. Each is a qdrant.PointStruct in proto3 JSON: an id that is a oneof of a uint64 (`{"num": "1"}`) or a UUID (`{"uuid": "..."}`), vectors, and a payload of Qdrant Value messages. The default is Qdrant's own quickstart dataset of six cities. With `wait` the reply comes after the write is applied (Completed); without it, as soon as it is accepted (Acknowledged). Proven by plans/points/upsert-and-read.yaml.

**Adapter:** `upsertPoints`

**gRPC:** `qdrant.Points/Upsert`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| points | PointStruct[] | yes | [… 6 items] |  |
| wait | boolean | yes | true |  |
| shardKey | string | no |  | The shard key to write to, which a custom-sharded collection requires |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| status | string | Completed, or Acknowledged when the write was not waited for |
| operationId | integer |  |

**Provides data to:** clearPayload, deletePayload, deletePoints, deleteVectors, discoverBatch, discoverPoints, facet, getPoints, overwritePayload, queryBatch, queryGroups, queryPoints, recommendBatch, recommendGroups, recommendPoints, restGetPoint, restQueryPoints, restSearchPoints, scrollPoints, searchBatch, searchGroups, searchMatrixOffsets, searchMatrixPairs, searchPoints, setPayload, updateVectors

**Receives data from:** createCollection, createCollectionFromConfig

