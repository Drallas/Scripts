# Gemaakt op 03-03-23 
# Om de I225 NIC te resetten op Proxmox server.
# * * * * * /root/scripts/ping-test.sh | logger -t ping-test
# cat /var/log/syslog | grep 'PING' voor logs

if ! ping -Q 1 -c 1 -t 1 192.168.1.200; then
    ifdown vmbr0 | logger -t vmbr0-down
    sleep 3
    ifup vmbr0 | logger -t vmbr0-up
fi