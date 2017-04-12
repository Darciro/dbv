#!/bin/bash
USER="deploy_username"
PASS="deploy_password"
DB="deploy_database"

# Execute import script for the database
mysql -u $USER -p$PASS $DB < ./data/db-backup.sql

# Update database with server's spefic data (site_url and home_url)
mysql -u $USER -p$PASS $DB < ./data/db-update.sql
