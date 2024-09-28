SOURCE_DIRECTORY="../Arena"
BACKUP_DIRECTORY="backup"
NUMBER_BACKUPS=5

mkdir -p "$BACKUP_DIRECTORY"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

tar -czf "$BACKUP_DIRECTORY/$BACKUP_NAME" "$SOURCE_DIRECTORY"

echo "Backup created: $BACKUP_NAME"

cd "$BACKUP_DIRECTORY" || exit #exits if the directory isn't present
ls -t | sed -e '1,5d' | while IFS= read -r file; do
    rm -f "$file"

done

