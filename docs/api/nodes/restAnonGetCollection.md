### restAnonGetCollection

restGetCollection with no credential: a 401 whose body is plain text, not JSON. Proven by plans/auth/keys.yaml.

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

