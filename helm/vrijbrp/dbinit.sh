#!/bin/bash
curl -XGET http://download.treinenwereld.eu/transportfiles/vrijbrpinit.sql -o /var/tmp/init.sql
PGPASSWORD=$POSTGRES_PASSWORD psql postgres -U $POSTGRES_USER -f /var/tmp/init.sql