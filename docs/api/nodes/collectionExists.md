### collectionExists

Whether a collection exists. `false` is a real answer rather than an error, and it arrives as a present `false`, not an absent field. Proven by plans/collections/missing.yaml.

**Adapter:** `collectionExists`

**gRPC:** `qdrant.Collections/CollectionExists`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| exists | boolean |  |

