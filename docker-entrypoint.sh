#!/bin/sh

[[ "${DEBUG}" = "true" ]] && set -x
set -e

echo '[!!] Running `docker-entrypoint.sh`..'

echo '[!!] Running yarn install..' # only after the correct directory permissions have been set
npm install \
    && echo '[!!] Yarn install completed successfully.' \
    || echo '[!!] Yarn install failed.' \

exec "$@"
