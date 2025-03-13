# Plex Backup Script

To test this script run :

```bash
cd /share/homes/sharename
./backupplex.sh
```

## Add a cronjob

```bash
# On qnap stuff added to crontab - e doesn't remain after a reboot.
# It's needed to edit via vi /etc/config/crontab:
# https://wiki.qnap.com/wiki/Add_items_to_crontab

0 0 * * 1-7 /share/homes/sharename/backupplex.sh
```

## Test manual test if files suitable for backup are found

``` bash
find "$sourcepath" -name "*.db-20*" -type f -mtime -3
```

## Path Media folder

The Media folder contains the actual music and video files.

```bash
/share/CE_CACHEDEV1_DATA/Multimedia
/share/Multimedia
```

For a restore to be succesfull this path needs to be exact the same;
in case of a full disk restore! I'm not sure if /share/Multimedia is suffice 
to recreate in case of an restore! Because it might be possible that a feature 
volume isn't called CE_CACHEDEV1_DATA.  