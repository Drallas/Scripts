# Setting the Proxy used by protocols (~/.bashrc)

function setproxy() {
    export {http,https,ftp}_proxy="<proxyname>"
}

# Unset Proxy
function unsetproxy() {
    unset {http,https,ftp}_proxy
}
