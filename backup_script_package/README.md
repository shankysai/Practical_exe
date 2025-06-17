README FILE

Make script executable using below command:
'''bash
chmod +x backup.sh



Run the below command:
./backup.sh


Backup process how it works :
SRC_PATH : the script backs up files from /var/www/app path
backup is compressed as .tar.gz with timestamp & archive will be stored in BKP_PATH
backups will be cleaned which are older than 7 days automatically
As part of this script will do dependency check as well to check if tar and gzip are installed before proceeding.



To run the script every day at midnight using cron job :
crontab -e

add this line :
0 0 * * * /path to backup.sh file.