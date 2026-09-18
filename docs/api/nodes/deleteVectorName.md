### deleteVectorName

Remove a named vector from a collection and from every point; the cleanup for createVectorName. Proven by plans/points/vectors.yaml.

**Adapter:** `deleteVectorName`

**gRPC:** `qdrant.Points/DeleteVectorName`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| vectorName | string | yes | from: createVectorName.vectorName |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| status | string |  |

