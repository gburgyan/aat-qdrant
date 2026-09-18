#!/bin/sh
# Rebuild qdrant.protoset, the descriptor set AAT reads, from the vendored
# protos in this directory. Run it after re-vendoring the protos; the output is
# checked in, so nobody else needs protoc.
#
# qdrant.proto is Qdrant's own entry point (lib/api/build.rs builds from it). It
# imports the internal services too, so every vendored file is needed even
# though the graph uses only the public ones. --include_imports brings in the
# two well-known types the protos use, timestamp.proto and empty.proto.
set -eu

cd "$(dirname "$0")/.."

include=${PROTOC_INCLUDE:-}
if [ -z "$include" ]; then
	for dir in /opt/homebrew/include /usr/local/include /usr/include; do
		if [ -f "$dir/google/protobuf/timestamp.proto" ]; then
			include=$dir
			break
		fi
	done
fi
if [ -z "$include" ]; then
	echo "build.sh: google/protobuf/timestamp.proto not found; set PROTOC_INCLUDE to protoc's include directory" >&2
	exit 1
fi

protoc -I proto -I "$include" --include_imports \
	--descriptor_set_out=qdrant.protoset proto/qdrant.proto

echo "wrote qdrant.protoset ($(wc -c <qdrant.protoset | tr -d ' ') bytes) with $(protoc --version)"
