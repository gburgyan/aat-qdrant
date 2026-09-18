### anonGrpcHealthCheck

grpcHealthCheck with no credential, which Qdrant serves anyway. Proven by plans/auth/keys.yaml.

**Adapter:** `grpcHealthCheck`

**gRPC:** `grpc.health.v1.Health/Check`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| service | string | no |  | A service to ask about, such as qdrant.Points; empty or absent asks about the server |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| status | string | SERVING, NOT_SERVING, UNKNOWN, or SERVICE_UNKNOWN |

