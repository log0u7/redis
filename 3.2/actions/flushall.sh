#!/usr/bin/env bash

set -e

if [[ ! -z "${DEBUG}" ]]; then
  set -x
fi

if [[ ! -z "${REDIS_PASSWORD}" ]]; then
    redis-cli -h "${host}" -a "${REDIS_PASSWORD}" flushall
else
    redis-cli -h "${host}" flushall
fi