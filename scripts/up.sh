#!/bin/sh
# Start the local Qdrant and wait until it answers. The image ships no curl and
# no HEALTHCHECK, so readiness is polled from here.
#
#   scripts/up.sh            # the standalone node: REST :6333, gRPC :6334
#   scripts/up.sh cluster    # also the one-node cluster: REST :7333, gRPC :7334
set -eu

cd "$(dirname "$0")/.."

wait_ready() {
	i=0
	until curl -fsS "http://127.0.0.1:$1/readyz" >/dev/null 2>&1; do
		i=$((i + 1))
		if [ "$i" -ge 60 ]; then
			echo "up.sh: Qdrant on :$1 not ready after 30s" >&2
			docker compose logs --tail 20 >&2
			exit 1
		fi
		sleep 0.5
	done
	echo "Qdrant ready on :$1"
}

if [ "${1:-}" = "cluster" ]; then
	docker compose --profile cluster up -d
	wait_ready 6333
	wait_ready 7333
else
	docker compose up -d qdrant
	wait_ready 6333
fi
