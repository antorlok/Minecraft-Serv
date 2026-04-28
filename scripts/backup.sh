#!/bin/bash

# --- VARIABLES ---
DATA_DIR="./data"
BACKUP_DIR="./backups"
DATE=$(date +"%Y-%m-%d_%H-%M")

# --- LOGIC ---
if [ ! -d "$DATA_DIR" ]; then
  echo "Error: The data directory ($DATA_DIR) does not exist. Start the server first."
  exit 1
fi

mkdir -p "$BACKUP_DIR"

tar -czvf "$BACKUP_DIR/backup_$DATE.tar.gz" "$DATA_DIR"

echo "Backup completed: $BACKUP_DIR/backup_$DATE.tar.gz"