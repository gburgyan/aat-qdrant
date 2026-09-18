### scrollPoints

Page through points in id order. The cursor, nextPageOffset, is a PointId: a oneof, so it comes back as {"num": ...} or {"uuid": ...}, and is absent on the last page. AAT pages with string cursors, so the node splits it into nextNum and nextUuid, one of which is set, and sends back whichever came. Proven by plans/points/scroll-pages.yaml.

**Adapter:** `scrollPoints`

**gRPC:** `qdrant.Points/Scroll`

**Inputs:**

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| collectionName | string | yes | from: createCollection.collectionName |  |
| limit | integer | yes | 2 |  |
| offsetNum | string | no |  | Start the page at this numeric id; with neither offset, it starts at the lowest |
| offsetUuid | string | no |  | Start the page at this UUID id |
| filter | Filter | no |  |  |

**Outputs:**

| Name | Type | Description |
|------|------|-------------|
| ids | PointId[] |  |
| cities | string[] |  |
| count | integer |  |
| nextPageOffset | PointId |  |
| nextNum | string | The cursor's numeric id, or "" when it is a UUID or there is no next page |
| nextUuid | string | The cursor's UUID, or "" when it is numeric or there is no next page |

**Receives data from:** jwtRbacUpsertPoints, jwtReadUpsertPoints, readOnlyUpsertPoints, upsertPoints

