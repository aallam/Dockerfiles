#!/bin/sh

if [ -n "$MYSQL_PASSWORD" ] ; then

        TEMP_FILE='/tmp/mysql-first-run.sql'
        cat > "$TEMP_FILE" <<-EOSQL
                DELETE FROM mysql.user WHERE user = 'root' AND host = '%';
                CREATE USER 'root'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}' ;
                GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION ;
                FLUSH PRIVILEGES ;
EOSQL

        set -- "$@" --init-file="$TEMP_FILE";
fi

exec "$@"
