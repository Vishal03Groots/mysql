#!/bin/bash

# Set the variables
MYSQL_USER="your_mysql_user"
MYSQL_PASS="your_mysql_password"
MYSQL_HOST="localhost"
MYSQL_BINLOG_DIR="/var/lib/mysql"

# Connect to MySQL and delete old binlogs
mysql -u $MYSQL_USER -p$MYSQL_PASS -h $MYSQL_HOST -e "PURGE BINARY LOGS BEFORE DATE_SUB(NOW(), INTERVAL 7 DAY);"

# Remove any empty binlog files
find $MYSQL_BINLOG_DIR -name "mysql-bin.*" -type f -size 0 -delete

echo "Done!"
