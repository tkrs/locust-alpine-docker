#!/bin/sh

LOCUST_OPTS="-f $SCENARIO_FILE --host=$TARGET_URL"
LOCUST_MODE=${LOCUST_MODE:-standalone}

if [ "$LOCUST_MODE" = "master" ]; then
  LOCUST_OPTS="$LOCUST_OPTS --master"
elif [ "$LOCUST_MODE" = "slave" ]; then
  LOCUST_OPTS="$LOCUST_OPTS --slave --master-host=$MASTER_HOST"
fi

exec /usr/local/bin/locust $LOCUST_OPTS
