#!/bin/bash
set -e

# Fallback to *net-utils* if nothing is specified
if [ -z "${MDNS_HOSTNAME}" ]; then
    export MDNS_HOSTNAME='net-utils'
fi

# Setup the hostname on the avahi config
# (We use the HOSTNAME environment variable for this)
sed "s/\(host-name=\).*/\1${MDNS_HOSTNAME}/g" \
    -i /etc/avahi/avahi-daemon.conf

# Required services for mDNS to work on debian
/etc/init.d/dbus start
/etc/init.d/avahi-daemon start

echo
echo "Host should be available via hostname: ${MDNS_HOSTNAME}.local"

if [[ $# -eq 0 ]] ; then
    exec bash
else
    exec "$@"
fi
