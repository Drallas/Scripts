# Scrip Asking for permissions first and keep them alive.
sudo -v # Run sudo without running a command

# This keeps the script alive forever until you exit the terminal
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
