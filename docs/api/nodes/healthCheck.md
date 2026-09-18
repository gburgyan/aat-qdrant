### healthCheck

Qdrant's own health check, which answers with its version. It is one of the two calls Qdrant serves without a key. Proven by plans/health/checks.yaml.

**Adapter:** `healthCheck`

**gRPC:** `qdrant.Qdrant/HealthCheck`

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| title | string |  |
| version | string |  |
| commit | string |  |

