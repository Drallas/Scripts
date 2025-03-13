# Plex DB Backup
# AAS:11-08-2019

# Set Vars with paths
sourcepath='/share/PlexData/Plex Media Server/Plug-in Support/Databases/'
destinationpath='/share/CE_CACHEDEV1_DATA/Software/myshare/Plex/cron_backup/Database/'

# Find source files younger than x days and copy them.
find "$sourcepath" -name "*.db-20*" -type f -mtime -1 -exec cp {} "$destinationpath" +

# Find destination files older than x days and delete them.
find $destinationpath -name "*.db-20*" -type f -mtime +90 -exec rm -f {} +

