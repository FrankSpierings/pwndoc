#!/bin/sh

# Fix volume permissions
echo "Fixing permissions..."
chown -R root:root /app/src
chown -R node:node /app/backup /app/report-templates /app/src/config

exec runuser -u node "$@"
