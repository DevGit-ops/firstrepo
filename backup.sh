mkdir -p "$DEST"

# Create a backup file with date in the name
cp -r "$SOURCE" "$DEST/mydata_backup_$(date +%F_%H-%M-%S)"

# Optional: Print confirmation
echo "Backup done at $(date)" >> /home/ubuntu/backup.log
