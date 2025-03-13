#!/bin/bash

# Search for host in IP Ranges that reply to ping and then tries to copy a ssh public key. 

keyname="/Users/mykeyname/.ssh/id_ed25519"
# homenas="192.168.1.101"
# ubuntuserver="your_ubuntuserver_ip"  # Replace with the actual IP

# List of servers and IP ranges
# SERVERS=" $homenas $ubuntuserver "

IP_RANGES=(
    # {10..19}
    # {100..149}
    {150..199}
)

# Function to handle script cancellation
cancel_script() {
    echo -e "\nScript canceled. Cleaning up..."
    
    # Clear the stored password
    unset password
    
    echo "Cleanup complete. Exiting."
    exit 1
}

# Trap Ctrl+C and call the cancel_script function
trap cancel_script SIGINT

# Prompt for and store the password for this session
echo -n "Enter your password for SSH authentication (Ctrl+C to cancel): "
read -s password || cancel_script  # Read password or cancel on Ctrl+C
echo

# Function to add SSH key to a remote server using expect
add_ssh_key_expect() {
    local host="$1"
    local user="$2"
    local ssh_key="$3"

    expect << EOF
        spawn ssh-copy-id -i $keyname.pub $user@$host
        expect {
            "password:" {
                send "$password\r"
                expect {
                    ".*added to the list of known hosts.*" {
                        send_user "Key added to $user@$host\n"
                    }
                    ".*All keys were skipped because they already exist on the remote system.*" {
                        send_user "Key already exists on $user@$host\n"
                    }
                }
            }
            ".*No route to host.*" {
                send_user "$host is not reachable\n"
            }
            eof
        }
EOF
}

# Loop through servers and IP ranges
# for ip in $SERVERS; do
#     if [[ $ip == pve* ]]; then
#         echo "Adding key to root@$ip"
#         add_ssh_key_expect "$ip" "root" "$(cat $keyname.pub)"
#     else
#         echo "Adding key to mykeyname@$ip"
#         add_ssh_key_expect "$ip" "mykeynam" "$(cat $keyname.pub)"
#     fi
# done

for ip_range in "${IP_RANGES[@]}"; do
    ip="192.168.1.$ip_range"
    if ping -c 1 -W 1 $ip > /dev/null; then
        echo "Ping successful for $ip, adding key to root@$ip"
        add_ssh_key_expect "$ip" "root" "$(cat $keyname.pub)"
    else
        echo "$ip is not reachable."
    fi
done

# Clear the stored password
unset password
