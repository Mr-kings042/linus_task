#!/usr/bin/env bash

# Read-only final verification helper.
# Purpose: inspect the expected final workspace without modifying it.

set -u

BASE="/home/agent007/mission"

echo "=== Current user ==="
whoami
echo

echo "=== Expected workspace ==="
for path in \
    "$BASE" \
    "$BASE/intel" \
    "$BASE/intel/targets.txt" \
    "$BASE/intel/routes.txt" \
    "$BASE/intel/listing1.txt" \
    "$BASE/intel/listing2.txt" \
    "$BASE/intel/listing3.txt" \
    "$BASE/ops" \
    "$BASE/ops/backup" \
    "$BASE/ops/backup/routes.txt"
do
    if [ -e "$path" ]; then
        printf '[OK]   %s\n' "$path"
    else
        printf '[MISS] %s\n' "$path"
    fi
done

echo
echo "=== targets.txt permissions and ownership ==="
if [ -e "$BASE/intel/targets.txt" ]; then
    ls -l "$BASE/intel/targets.txt"
else
    echo "[MISS] targets.txt"
fi

echo
echo "=== Recursive final listing ==="
if [ -d "$BASE" ]; then
    ls -laR "$BASE"
else
    echo "[MISS] $BASE"
fi
