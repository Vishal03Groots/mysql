# mysql
Save the file and make it executable using the following command: chmod +x clean.sh
This script will connect to MySQL and delete all binary logs that are older than 7 days. It will also remove any empty binlog files to free up disk space. You can adjust the time interval as needed by modifying the "INTERVAL" value in the MySQL query.
