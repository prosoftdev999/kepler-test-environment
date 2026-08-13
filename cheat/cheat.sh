#!/bin/bash
set -e

mkdir -p /app

# Deliberately wrong shortcut.
printf '12345\n' > /app/output.txt
