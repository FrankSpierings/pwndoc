#!/bin/sh

# Fix volume permissions
echo "Fixing permissions..."
chown -R root:root /app/src
mkdir -p /app/backup /app/report-templates /app/src/config
chown -R node:node /app/backup /app/report-templates /app/src/config

exec runuser -u node "$@"
