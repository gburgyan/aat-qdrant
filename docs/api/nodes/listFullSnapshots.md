### listFullSnapshots

Every full snapshot. The guard asserts there are none left, which holds on this project's own throwaway container. Proven by plans/zz-guard/no-stray-full-snapshots.yaml.

**Adapter:** `listFullSnapshots`

**gRPC:** `qdrant.Snapshots/ListFull`

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| names | string[] |  |
| count | integer |  |

