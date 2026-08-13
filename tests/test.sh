#!/bin/bash

set +e

mkdir -p /logs/verifier

pytest /tests/test_output.py \
    --ctrf /logs/verifier/ctrf.json

STATUS=$?

if [ "$STATUS" -eq 0 ]; then
    printf '1' > /logs/verifier/reward.txt
else
    printf '0' > /logs/verifier/reward.txt
fi

exit 0
