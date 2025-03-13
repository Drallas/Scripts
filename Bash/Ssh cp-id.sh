# Script expects a servers.txt file with entries per line.
# Usage : ./ssh-copy-id.sh

# Script can be useful to copy my .ssh/id_rsa.pub key to a group of server.

for server in `cat servers.txt`; do
    ssh-copy-id -i ~/.ssh/id_rsa.pub $server
done


# Load pass from a file (not tested!)
# See : https://www.cyberciti.biz/faq/noninteractive-shell-script-ssh-password-provider/
for server in `cat servers.txt`; do
    sshpass -f ~.secrets/username ssh username@$server
    ssh-copy-id -i ~/.ssh/id_rsa.pub $server
done