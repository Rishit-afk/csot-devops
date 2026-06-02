#!/bin/bash
max_attempts=$1
delay=$2
shift 3

attempt=0

while  [ $attempt -lt $max_attempts ]; do
    "$@"
    rc=$?
    if [ $rc -eq 0 ]; then
        exit 0
    fi

    attempt=$((attempt+1))

    if [ $attempt -eq $max_attempts ]; then
        exit $rc
    fi

    sleep "$delay"
    delay=$((delay*2))
done

