#!/bin/bash
set -euo pipefail

mkdir -p /app

python3 - <<'PY'
from pathlib import Path

numbers = list(range(1, 101))
answer = sum(x * x for x in numbers)

Path("/app/output.txt").write_text(f"{answer}\n")
PY
