#!/bin/bash
USER="local_username"
PASS="local_password"
DB="local_database"

# Creates an SQL datadump for database
mysqldump -u $USER -p$PASS $DB --add-drop-table > ./data/db-backup.sql
