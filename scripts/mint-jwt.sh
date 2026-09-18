#!/bin/sh
# Mint a Qdrant JWT: HS256, signed with the API key, which is how Qdrant checks
# them when jwt_rbac is on. It needs only openssl.
#
#   scripts/mint-jwt.sh '{"access":"r"}'
#   scripts/mint-jwt.sh '{"access":[{"collection":"aat-qdrant-rbac","access":"rw"}]}'
#   scripts/mint-jwt.sh '{"access":"r","exp":1}'            # long expired
#
# The key defaults to the local container's (compose.yaml), so the tokens this
# prints are only good against that container. Set QDRANT_API_KEY to sign for
# another server; never commit a token signed with a real key.
set -eu

claims=${1:?usage: mint-jwt.sh CLAIMS_JSON}
key=${QDRANT_API_KEY:-aat-qdrant-local-key}

b64url() { openssl base64 -A | tr '+/' '-_' | tr -d '='; }

header=$(printf '%s' '{"alg":"HS256","typ":"JWT"}' | b64url)
payload=$(printf '%s' "$claims" | b64url)
signature=$(printf '%s' "$header.$payload" | openssl dgst -sha256 -hmac "$key" -binary | b64url)

printf '%s.%s.%s\n' "$header" "$payload" "$signature"
