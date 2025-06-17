#! /bin/bash
SRC_PATH="/var/www/app"
BKP_PATH="/bkp"
TIMESTAMP=$(date +"%Y-%m-%d")
BKP_FILE="app-bkp-$TIMESTAMP.tar.gz"
RETAIN_DAYS=7

for cmd in tar gzip; do
	if ! command -v $cmd &> /dev/null; then
		echo "error: '$cmd' not found. kindly install"
		exit 1
	fi
done

mkdir -p "$BKP_PATH"
tar -czf "$BKP_PATH/$BKP_FILE" -C "$SRC_PATH"  .

find "$BKP_DIR" -name "app-bkp-*.tar.gz" -type f -mtime +$RETAIN_DAYS -exec rm {} \;

echo "Completed: $BKP_FILE"
