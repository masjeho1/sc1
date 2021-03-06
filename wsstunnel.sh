REMOTE_HOST=${MYIP}
REMOTE_PORT=636
UPDATE_HOSTS='/etc/hosts'

# Change if using nginx with custom prefix for added security
WS_PREFIX='E7m5vGDqryd55MMP'

# Change if running WSS on a non-standard port, i.e. 4443
export WSS_PORT=443

# Can change local port of the wstunnel, don't forget to change Peer.Endpoint
LOCAL_PORT=${REMOTE_PORT}

# If using dnsmasq can supply other file than /etc/hosts
UPDATE_HOSTS='/usr/local/etc/dnsmasq.d/hosts/tunnels'

# Will send -HUP to dnsmasq to reload hosts
USING_DNSMASQ=1
