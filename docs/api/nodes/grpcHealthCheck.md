### grpcHealthCheck

The standard gRPC health service (grpc.health.v1.Health/Check), the other call served without a key. An empty service name asks about the server as a whole. Proven by plans/health/checks.yaml.

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

