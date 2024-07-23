
#!/bin/bash


# Variables
SOURCE_DIR="/home/samir/scriptProjects/shellscripting_projects"
BACKUP_DIR="/home/samir/Desktop/backuppractice"
DATE=$(date +%Y%m%d%H%M%S)
BACKUP_FILE="backup_$DATE.tar.gz"

# Create backup
tar -czvf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"

# Log the backup
echo "Backup created at $BACKUP_DIR/$BACKUP_FILE on $DATE" >> "$BACKUP_DIR/backup.log"



