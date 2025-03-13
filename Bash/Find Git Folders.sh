# Show Git folders in the directory and subfolders from where the script is run
find . -type d -exec test -e '{}/.git' ';' -print -prune