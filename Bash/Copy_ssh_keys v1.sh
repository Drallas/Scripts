#!/bin/bash

# Copy public ssh-keys to servers.

# Todo list:
# Change for loop to case statement.
# Add Key for the Edgerouter.

# Vars
keyname="id_ed25519.pub"
server1="192.168.1.101"
server2="192.168.1.211"

# List of servers.
SERVERS=" $server1 \
          $server2 \
"

# Copy the public keys.
for ip in $SERVERS; do
    # if ip is equal tot 101
    if [ $ip = $proxmox ]; then
        echo "Adding key to root@$ip"
        ssh-copy-id -i ~/.ssh/$keyname root@$ip
    else
        echo "Adding key to myname@$ip"
        ssh-copy-id -i ~/.ssh/$keyname myname@$ip
    fi
done
