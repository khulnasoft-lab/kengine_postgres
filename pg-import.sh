#!/bin/bash

env PGPASSWORD="$KENGINE_POSTGRES_USER_DB_PASSWORD" psql "host=$KENGINE_POSTGRES_USER_DB_HOST port=$KENGINE_POSTGRES_USER_DB_PORT user=$KENGINE_POSTGRES_USER_DB_USER dbname=$KENGINE_POSTGRES_USER_DB_NAME sslmode=$KENGINE_POSTGRES_USER_DB_SSLMODE" < $1

echo "Postgres restore completed from the file pg_data.dump"
