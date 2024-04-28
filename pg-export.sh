#!/bin/bash

env PGPASSWORD="$KENGINE_POSTGRES_USER_DB_PASSWORD" \
    pg_dump "host=$KENGINE_POSTGRES_USER_DB_HOST port=$KENGINE_POSTGRES_USER_DB_PORT user=$KENGINE_POSTGRES_USER_DB_USER dbname=$KENGINE_POSTGRES_USER_DB_NAME sslmode=$KENGINE_POSTGRES_USER_DB_SSLMODE" \
    -f /data/pg_data.dump

echo "Postgres backup saved to the file /data/pg_data.dump"
