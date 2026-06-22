#!/bin/bash
# /usr/local/bin/s3_backup.sh

BUCKET="kara-backup-alice"
DATE=$(date +%Y-%m-%d)
LOG_FILE="/var/log/myapp_backup.log"

echo "[$(date)] Starting backup..." >> $LOG_FILE

# Sync files to S3
aws s3 sync /opt/myapp/app/ s3://$BUCKET/backups/$DATE/app/ --quiet
aws s3 sync /opt/myapp/config/ s3://$BUCKET/backups/$DATE/config/ --quiet

if [ $? -eq 0 ]; then
    echo "[$(date)] Backup to $BUCKET completed successfully." >> $LOG_FILE
else
    echo "[$(date)] ERROR: Backup failed!" >> $LOG_FILE
fi
