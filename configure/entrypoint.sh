#!/bin/bash
set -e

# Capture Connect configuration in $GITHUB_ENV, giving (optional) inputs 
# precendence over OP_CONNECT_* environment variables.

OP_CONNECT_HOST=${INPUT_CONNECT_HOST:-$OP_CONNECT_HOST}
if [ -n "$OP_CONNECT_HOST" ]; then
  echo "OP_CONNECT_HOST=$OP_CONNECT_HOST" >> $GITHUB_ENV
fi

OP_CONNECT_TOKEN=${INPUT_CONNECT_TOKEN:-$OP_CONNECT_TOKEN}
if [ -n "$OP_CONNECT_TOKEN" ]; then
  echo "OP_CONNECT_TOKEN=$OP_CONNECT_TOKEN" >> $GITHUB_ENV
fi
