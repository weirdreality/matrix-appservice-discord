#!/usr/bin/env bash
source ~/.bashrc

SYNAPSE_URL="http://172.17.0.1:8008/health"
echo "waiting for synapse to start (copyright gpt for this message)"

until curl -fsS "$SYNAPSE_URL" >/dev/null 2>&1; do
    sleep 5
done

echo "synapse started starting"

nvm use 20
yarn start
