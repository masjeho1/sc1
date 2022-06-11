#!/bin/bash
# Repacked by gandring
# My Telegram : https://t.me/pegasusq_governor
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
IP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"

# initializing var
export DEBIAN_FRONTEND=noninteractive
IP=$(wget -qO- ipinfo.io/ip);
IP2="s/xxxxxxxxx/$I2P/g";
NIC=$(ip -o $ANU -4 route show to default | awk '{print $5}');
source /etc/os-release
ver=$VERSION_ID

#detail nama perusahaan
country=SA
state=KwaZulu-Natal
locality=Durban
organization=DopekidVPN
organizationalunit=dopekid
commonname=DopekidVPN
email=joashsingh14@gmail.com

# simple password minimal
wget -O /etc/pam.d/common-password "https://raw.githubusercontent.com/masjeho1/sc1/main/password"
chmod +x /etc/pam.d/common-password

# go to root
cd

# Edit file /etc/systemd/system/rc-local.service
cat > /etc/systemd/system/rc-local.service <<-END
[Unit]
Description=/etc/rc.local
ConditionPathExists=/etc/rc.local
[Service]
Type=forking
ExecStart=/etc/rc.local start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99
[Install]
WantedBy=multi-user.target
END

# nano /etc/rc.local
cat > /etc/rc.local <<-END
#!/bin/sh -e
# rc.local
# By default this script does nothing.
exit 0
END

# Ubah izin akses
chmod +x /etc/rc.local

# enable rc local
systemctl enable rc-local
systemctl start rc-local.service

# disable ipv6
echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6
sed -i '$ i\echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6' /etc/rc.local

#update
apt update -y
apt upgrade -y
apt dist-upgrade -y
apt-get remove --purge exim4 -y

# install wget and curl
apt -y install wget curl

# Install Requirements Tools
apt install ruby -y
apt install cowsay -y
apt install python -y
apt install make -y
apt install cmake -y
apt install coreutils -y
apt install rsyslog -y
apt install net-tools -y
apt install zip -y
apt install unzip -y
apt install nano -y
apt install sed -y
apt install gnupg -y
apt install gnupg1 -y
apt install bc -y
apt install jq -y
apt install apt-transport-https -y
apt install build-essential -y
apt install dirmngr -y
apt install libxml-parser-perl -y
apt install neofetch -y
apt install git -y
apt install lsof -y
apt install libsqlite3-dev -y
apt install libz-dev -y
apt install gcc -y
apt install g++ -y
apt install libreadline-dev -y
apt install zlib1g-dev -y
apt install libssl-dev -y
apt install libssl1.0-dev -y
apt install dos2unix -y

# set time GMT +7
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# set locale
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config

# install
apt-get --reinstall --fix-missing install -y bzip2 gzip coreutils wget screen rsyslog iftop htop net-tools zip unzip wget net-tools curl nano sed screen gnupg gnupg1 bc apt-transport-https build-essential dirmngr libxml-parser-perl neofetch git lsof
echo "clear" >> .profile
echo "neofetch" >> .profile

# install webserver
apt -y install nginx php php-fpm php-cli php-mysql libxml-parser-perl
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
curl https://raw.githubusercontent.com/masjeho1/sc1/main/nginx.conf > /etc/nginx/nginx.conf
curl https://raw.githubusercontent.com/masjeho1/sc1/main/vps.conf > /etc/nginx/conf.d/vps.conf
sed -i 's/listen = \/var\/run\/php-fpm.sock/listen = 127.0.0.1:9000/g' /etc/php/fpm/pool.d/www.conf
useradd -m vps;
mkdir -p /home/vps/public_html
echo "<?php phpinfo() ?>" > /home/vps/public_html/info.php
chown -R www-data:www-data /home/vps/public_html
chmod -R g+rw /home/vps/public_html
cd /home/vps/public_html
wget -O /home/vps/public_html/index.html "https://raw.githubusercontent.com/masjeho1/sc1/main/index.html"
/etc/init.d/nginx restart
cd

# install badvpn
cd
wget -O /usr/bin/badvpn-udpgw "https://raw.githubusercontent.com/masjeho1/sc1/main/badvpn-udpgw64"
chmod +x /usr/bin/badvpn-udpgw
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 500' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 500' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 500' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 500' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7400 --max-clients 500' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7500 --max-clients 500' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7600 --max-clients 500' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7700 --max-clients 500' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7800 --max-clients 500' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7900 --max-clients 500' /etc/rc.local

# setting port ssh
sed -i 's/Port 22/Port 22/g' /etc/ssh/sshd_config

# install dropbear
apt -y install dropbear
sed -i 's/NO_START=1/NO_START=0/g' /etc/default/dropbear
sed -i 's/DROPBEAR_PORT=22/DROPBEAR_PORT=389/g' /etc/default/dropbear
sed -i 's/DROPBEAR_EXTRA_ARGS=/DROPBEAR_EXTRA_ARGS="-p 390"/g' /etc/default/dropbear
echo "/bin/false" >> /etc/shells
echo "/usr/sbin/nologin" >> /etc/shells
/etc/init.d/dropbear restart

# install squid
cd
apt -y install squid3
wget -O /etc/squid/squid.conf "https://raw.githubusercontent.com/masjeho1/sc1/main/squid3.conf"
sed -i $IP2 /etc/squid/squid.conf

# Install SSLH
apt -y install sslh
rm -f /etc/default/sslh

# Settings SSLH
cat > /etc/default/sslh <<-END
# Default options for sslh initscript
# sourced by /etc/init.d/sslh

# Disabled by default, to force yourself
# to read the configuration:
# - /usr/share/doc/sslh/README.Debian (quick start)
# - /usr/share/doc/sslh/README, at "Configuration" section
# - sslh(8) via "man sslh" for more configuration details.
# Once configuration ready, you *must* set RUN to yes here
# and try to start sslh (standalone mode only)

RUN=yes

# binary to use: forked (sslh) or single-thread (sslh-select) version
# systemd users: don't forget to modify /lib/systemd/system/sslh.service
DAEMON=/usr/sbin/sslh

DAEMON_OPTS="--user sslh --listen 0.0.0.0:2093 --ssl 127.0.0.1:389 --ssh 127.0.0.1:22 --openvpn 127.0.0.1:3268 --http 127.0.0.1:2052 --pidfile /var/run/sslh/sslh.pid -n"

END

# Restart Service SSLH
service sslh restart
systemctl restart sslh
/etc/init.d/sslh restart
/etc/init.d/sslh status
/etc/init.d/sslh restart

# setting vnstat
apt -y install vnstat
/etc/init.d/vnstat restart
apt -y install libsqlite3-dev
wget https://humdi.net/vnstat/vnstat-2.6.tar.gz
tar zxvf vnstat-2.6.tar.gz
cd vnstat-2.6
./configure --prefix=/usr --sysconfdir=/etc && make && make install
cd
vnstat -u -i $NET
sed -i 's/Interface "'""eth0""'"/Interface "'""$NET""'"/g' /etc/vnstat.conf
chown vnstat:vnstat /var/lib/vnstat -R
systemctl enable vnstat
/etc/init.d/vnstat restart
rm -f /root/vnstat-2.6.tar.gz
rm -rf /root/vnstat-2.6

mkdir -p /usr/local/gandring
mkdir -p /etc/gandring

# install stunnel 5 
cd /root/
wget -q -O stunnel5.zip "https://raw.githubusercontent.com/masjeho1/sc1/main/stunnel5.zip"
unzip -o stunnel5.zip
cd /root/stunnel
chmod +x configure
./configure
make
make install
cd /root
rm -r -f stunnel
rm -f stunnel5.zip
mkdir -p /etc/stunnel5
chmod 644 /etc/stunnel5
# install wstunnel wireguard
wget -q -O wstunnel-64-linux "https://raw.githubusercontent.com/masjeho1/sc1/main/wstunnel-x64-linux"
cd
mkdir -p wstunnel /etc/ /usr/local/bin/wstunnel
sudo setcap CAP_NET_BIND_SERVICE=+eip /usr/local/bin/wstunnel
cat > /etc/systemd/system/wstunnel.service
[Unit]
Description=Tunnel WG UDP over websocket
After=network.target

[Service]
Type=simple 
User=nobody 
ExecStart=/usr/local/bin/wstunnel -v --server wss://0.0.0.0:443 --restrictTo=127.0.0.1:636
Restart=no 

[Install] 
WantedBy=multi-user.target
END
sudo systemctl enable wstunnel
sudo systemctl start wstunnel

sudo systemctl enable wsstunnel
sudo systemctl start wsstunnel
apt update && apt install -y curl jq
sed -i $IP2 /etc/local/bin/wstunnel
cp wstunnel /usr/local/bin/wstunnel
mkdir -p wstunnel > /etc/wireguard/wstunnel.conf
cat > /etc/wireguard/wstunnel.conf
# Download Config Stunnel5
cat > /etc/stunnel5/stunnel5.conf <<-END
cert = /etc/stunnel5/stunnel5.pem
client = no
socket = a:SO_REUSEADDR=1
socket = l:TCP_NODELAY=1
socket = r:TCP_NODELAY=1

[dropbear]
accept = 442
connect = 127.0.0.1:389

[openssh]
accept = 447
connect = 127.0.0.1:222

[stunnel5]
accept = 445
connect = 127.0.0.22

[openvpn]
accept = 446
connect = 127.0.0.1:3268

[openvpn]
accept = 990
connect = 127.0.0.1:3269

END

# make a certificate
openssl genrsa -out key.pem 2048
openssl req -new -x509 -key key.pem -out cert.pem -days 1095 \
-subj "/C=$country/ST=$state/L=$locality/O=$organization/OU=$organizationalunit/CN=$commonname/emailAddress=$email"
cat key.pem cert.pem >> /etc/stunnel5/stunnel5.pem

# Service Stunnel5 systemctl restart stunnel5
cat > /etc/systemd/system/stunnel5.service << END
[Unit]
Description=Stunnel5 Service
Documentation=https://stunnel.org
Documentation=https://github.com/masjeho1/sc1/main/
After=syslog.target network-online.target

[Service]
ExecStart=/usr/local/gandring/stunnel5 /etc/stunnel5/stunnel5.conf
Type=forking

[Install]
WantedBy=multi-user.target
END

# Service Stunnel5 /etc/init.d/stunnel5
wget -q -p https://github.com/actions/python-versions/releases/download/3.11.0-alpha.4-1754961913/python-3.11.0-alpha.4-linux-20.04-x64.tar.gz"
chmod +x python-3.11.0-alpha.4-linux-20.04-x64.tar.gz
chmod +x /etc/python3.11/site_customize.py

wget -q -O /etc/init.d/stunnel5 "https://raw.githubusercontent.com/masjeho1/sc1/main/stunnel5.init && chmod +x stunnel5.init && ./stunnel5.init

# Ubah Izin Akses
chmod 600 /etc/stunnel5/stunnel5.pem
chmod +x /etc/init.d/stunnel5
cp /usr/local/bin/stunnel /usr/local/gandring/stunnel5

# Remove File
#rm -r -f /usr/local/share/doc/stunnel/
rm -r -f /usr/local/etc/stunnel/
rm -f /usr/local/bin/stunnel
rm -f /usr/local/bin/stunnel3
rm -f /usr/local/bin/stunnel4
#rm -f /usr/local/bin/stunnel5

# Restart Stunnel 5
systemctl stop stunnel5
systemctl enable stunnel5
systemctl start stunnel5
systemctl restart stunnel5
/etc/init.d/stunnel5 restart
/etc/init.d/stunnel5 status
/etc/init.d/stunnel5 restart

#OpenVPN
wget https://raw.githubusercontent.com/masjeho1/sc1/main/vpn.sh &&  chmod +x vpn.sh && ./vpn.sh

# install fail2ban
apt -y install fail2ban

# Instal DDOS Flate
if [ -d '/usr/local/ddos' ]; then
	echo; echo; echo "Please un-install the previous version first"
	exit 0
else
	mkdir /usr/local/ddos
fi
clear
echo; echo 'Installing DOS-Deflate 0.6'; echo
echo; echo -n 'Downloading source files...'
wget -q -O /usr/local/ddos/ddos.conf http://www.inetbase.com/scripts/ddos/ddos.conf
echo -n '.'
wget -q -O /usr/local/ddos/LICENSE http://www.inetbase.com/scripts/ddos/LICENSE
echo -n '.'
wget -q -O /usr/local/ddos/ignore.ip.list http://www.inetbase.com/scripts/ddos/ignore.ip.list
echo -n '.'
wget -q -O /usr/local/ddos/ddos.sh http://www.inetbase.com/scripts/ddos/ddos.sh
chmod 0755 /usr/local/ddos/ddos.sh
cp -s /usr/local/ddos/ddos.sh /usr/local/sbin/ddos
echo '...done'
echo; echo -n 'Creating cron to run script every minute.....(Default setting)'
/usr/local/ddos/ddos.sh --cron > /dev/null 2>&1
echo '.....done'
echo; echo 'Installation has completed.'
echo 'Config file is at /usr/local/ddos/ddos.conf'
echo 'Please send in your comments and/or suggestions to zaf@vsnl.com'

# banner /etc/issue.net
echo "Banner /etc/issue.net" >>/etc/ssh/sshd_config
sed -i 's@DROPBEAR_BANNER=""@DROPBEAR_BANNER="/etc/issue.net"@g' /etc/default/dropbear

# Install BBR
wget https://raw.githubusercontent.com/masjeho1/sc1/main/bbr.sh && chmod +x bbr.sh && ./bbr.sh

# Ganti Banner
wget -O /etc/issue.net "https://raw.githubusercontent.com/masjeho1/sc1/main/issue.net && chmod +x issue.net && ./issue.net

# blockir torrent
iptables -A FORWARD -m string --string "get_peers" --algo bm -j DROP
iptables -A FORWARD -m string --string "announce_peer" --algo bm -j DROP
iptables -A FORWARD -m string --string "find_node" --algo bm -j DROP
iptables -A FORWARD -m string --algo bm --string "BitTorrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "BitTorrent protocol" -j DROP
iptables -A FORWARD -m string --algo bm --string "peer_id=" -j DROP
iptables -A FORWARD -m string --algo bm --string ".torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce.php?passkey=" -j DROP
iptables -A FORWARD -m string --algo bm --string "torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce" -j DROP
iptables -A FORWARD -m string --algo bm --string "info_hash" -j DROP
iptables-save > /etc/iptables.up.rules
iptables-restore -t < /etc/iptables.up.rules
netfilter-persistent save
netfilter-persistent reload

# download script
cd /usr/bin
wget -O autoreboot "https://raw.githubusercontent.com/masjeho1/sc1/main/autoreboot.sh"
wget -O addhost "https://raw.githubusercontent.com/masjeho1/sc1/main/addhost.sh"
wget -O about "https://raw.githubusercontent.com/masjeho1/sc1/main/about.sh"
wget -O menu "https://raw.githubusercontent.com/masjeho1/sc1/main/menu.sh"
wget -O menu2 "https://raw.githubusercontent.com/masjeho1/sc1/main/menu2.sh"
wget -O addssh "https://raw.githubusercontent.com/masjeho1/sc1/main/addssh.sh"
wget -O trialssh "https://raw.githubusercontent.com/masjeho1/sc1/main/trialssh.sh"
wget -O delssh "https://raw.githubusercontent.com/masjeho1/sc1/main/delssh.sh"
wget -O member "https://raw.githubusercontent.com/masjeho1/sc1/main/member.sh"
wget -O delexp "https://raw.githubusercontent.com/masjeho1/sc1/main/delexp.sh"
wget -O cekssh "https://raw.githubusercontent.com/masjeho1/sc1/main/cekssh.sh"
wget -O restart "https://raw.githubusercontent.com/masjeho1/sc1/main/restart.sh"
wget -O speedtest "https://raw.githubusercontent.com/masjeho1/sc1/main/speedtest_cli.py"
wget -O info "https://raw.githubusercontent.com/masjeho1/sc1/main/info.sh"
wget -O ram "https://raw.githubusercontent.com/masjeho1/sc1/main/ram.sh"
wget -O renewssh "https://raw.githubusercontent.com/masjeho1/sc1/main/renewssh.sh"
wget -O autokill "https://raw.githubusercontent.com/masjeho1/sc1/main/autokill.sh"
wget -O ceklim "https://raw.githubusercontent.com/masjeho1/sc1/main/ceklim.sh"
wget -O tendang "https://raw.githubusercontent.com/masjeho1/sc1/main/tendang.sh"
wget -O clearlog "https://raw.githubusercontent.com/masjeho1/sc1/main/clearlog.sh"
wget -O changeport "https://raw.githubusercontent.com/masjeho1/sc1/main/changeport.sh"
wget -O portovpn "https://raw.githubusercontent.com/masjeho1/sc1/main/portovpn.sh"
wget -O portwg "https://raw.githubusercontent.com/masjeho1/sc1/main/portwg.sh"
wget -O porttrojan "https://raw.githubusercontent.com/masjeho1/sc1/main/porttrojan.sh"
wget -O portsstp "https://raw.githubusercontent.com/masjeho1/sc1/main/portsstp.sh"
wget -O portsquid "https://raw.githubusercontent.com/masjeho1/sc1/main/portsquid.sh"
wget -O portv2ray "https://raw.githubusercontent.com/masjeho1/sc1/main/portv2ray.sh"
wget -O portvless "https://raw.githubusercontent.com/masjeho1/sc1/main/portvless.sh"
wget -O webmin "https://raw.githubusercontent.com/masjeho1/sc1/main/webmin.sh"
wget -O xp "https://raw.githubusercontent.com/masjeho1/sc1/main/xp.sh"
wget -O swapkvm "https://raw.githubusercontent.com/masjeho1/sc1/main/swapkvm.sh"
wget -O addv2ray "https://raw.githubusercontent.com/masjeho1/sc1/main/addv2ray.sh"
wget -O addvless "https://raw.githubusercontent.com/masjeho1/sc1/main/addvless.sh"
wget -O addvless-grpc "https://raw.githubusercontent.com/masjeho1/sc1/main/addvless-grpc.sh"
wget -O addtrojan "https://raw.githubusercontent.com/masjeho1/sc1/main/addtrojan.sh"
wget -O delv2ray "https://raw.githubusercontent.com/masjeho1/sc1/main/delv2ray.sh"
wget -O delvless "https://raw.githubusercontent.com/masjeho1/sc1/main/delvless.sh"
wget -O delvless-grpc "https://raw.githubusercontent.com/masjeho1/sc1/main/delvless-grpc.sh"
wget -O deltrojan "https://raw.githubusercontent.com/masjeho1/sc1/main/deltrojan.sh"
wget -O cekv2ray "https://raw.githubusercontent.com/masjeho1/sc1/main/cekv2ray.sh"
wget -O cekvless "https://raw.githubusercontent.com/masjeho1/sc1/main/cekvless.sh"
wget -O cekvless-grpc "https://raw.githubusercontent.com/masjeho1/sc1/main/cekvless-grpc.sh"
wget -O cektrojan "https://raw.githubusercontent.com/masjeho1/sc1/main/cektrojan.sh"
wget -O renewv2ray "https://raw.githubusercontent.com/masjeho1/sc1/main/renewv2ray.sh"
wget -O renewvless "https://raw.githubusercontent.com/masjeho1/sc1/main/renewvless.sh"
wget -O renewvless-grpc "https://raw.githubusercontent.com/masjeho1/sc1/main/renewvless-grpc.sh"
wget -O renewtrojan "https://raw.githubusercontent.com/masjeho1/sc1/main/renewtrojan.sh"
wget -O certv2ray "https://raw.githubusercontent.com/masjeho1/sc1/main/certv2ray.sh"
wget -O addtrgo "https://raw.githubusercontent.com/masjeho1/sc1/main/addtrgo.sh"
wget -O deltrgo "https://raw.githubusercontent.com/masjeho1/sc1/main/deltrgo.sh"
wget -O renewtrgo "https://raw.githubusercontent.com/masjeho1/sc1/main/renewtrgo.sh"
wget -O cektrgo "https://raw.githubusercontent.com/masjeho1/sc1/main/cektrgo.sh"
wget -O bekap "https://raw.githubusercontent.com/masjeho1/sc1/main/bekap.sh"
wget -O l2tp "https://raw.githubusercontent.com/masjeho1/sc1/main/l2tp.sh"
wget -O medo "https://raw.githubusercontent.com/masjeho1/sc1/main/medo.sh"
wget -O menu "https://raw.githubusercontent.com/masjeho1/sc1/main/menu.sh"
wget -O paneli "https://raw.githubusercontent.com/masjeho1/sc1/main/paneli.sh"
wget -O ppt "https://raw.githubusercontent.com/masjeho1/sc1/main/ppt.sh"
wget -O ssh "0https://raw.githubusercontent.com/masjeho1/sc1/main/ssh.sh"
wget -O ssssr "https://raw.githubusercontent.com/masjeho1/sc1/main/ssssr.sh"
wget -O sstpp "https://raw.githubusercontent.com/masjeho1/sc1/main/sstpp.sh"
wget -O status "https://raw.githubusercontent.com/masjeho1/sc1/main/status.sh"
wget -O system "https://raw.githubusercontent.com/masjeho1/sc1/main/system.sh"
wget -O trojaan "https://raw.githubusercontent.com/masjeho1/sc1/main/trojaan.sh"
wget -O v2raay "https://raw.githubusercontent.com/masjeho1/sc1/main/v2raay.sh"
wget -O wgr "https://raw.githubusercontent.com/masjeho1/sc1/main/wgr.sh"
wget -O bbr "https://raw.githubusercontent.com/masjeho1/sc1/main/bbr.sh"
wget -O bannerku "https://raw.githubusercontent.com/masjeho1/sc1/main/bannerku"
wget -O bannerDOMAIN "https://raw.githubusercontent.com/masjeho1/sc1/main/bannerDOMAIN"
wget -O bannerL2TP "https://raw.githubusercontent.com/masjeho1/sc1/main/bannerL2TP"
wget -O bannerPPTP "https://raw.githubusercontent.com/masjeho1/sc1/main/bannerPPTP"
wget -O bannerSHADOWSOCK "https://raw.githubusercontent.com/masjeho1/sc1/main/bannerSHADOWSOCK"
wget -O bannerSSH "https://raw.githubusercontent.com/masjeho1/sc1/main/bannerSSH"
wget -O bannerSSTP "https://raw.githubusercontent.com/masjeho1/sc1/main/bannerSSTP"
wget -O bannerSYSTEM "https://raw.githubusercontent.com/masjeho1/sc1/main/bannerSYSTEM"
wget -O bannerTROJAN "https://raw.githubusercontent.com/masjeho1/sc1/main/bannerTROJAN"
wget -O bannerV2RAY "https://raw.githubusercontent.com/masjeho1/sc1/main/bannerV2RAY"
wget -O bannerVPN "https://raw.githubusercontent.com/masjeho1/sc1/main/bannerVPN"
wget -O bannerWIREGUARD "https://raw.githubusercontent.com/masjeho1/sc1/main/bannerWIREGUARD"
wget -O bannerBACKUP "https://raw.githubusercontent.com/masjeho1/sc1/main/bannerBACKUP"
wget -O addcf "https://raw.githubusercontent.com/masjeho1/sc1/main/addcf.sh"
wget -O wg "https://raw.githubusercontent.com/masjeho1/sc1/main/wg.sh"
wget -O cff "https://raw.githubusercontent.com/masjeho1/sc1/main/cff.sh"
wget -O cfh "https://raw.githubusercontent.com/masjeho1/sc1/main/cfh.sh"
wget -O host "https://raw.githubusercontent.com/masjeho1/sc1/main/host.sh"
wget -O bw "https://raw.githubusercontent.com/masjeho1/sc1/main/bw.sh"
wget -O update "https://raw.githubusercontent.com/masjeho1/sc1/main/update.sh"
wget -O host "https://raw.githubusercontent.com/masjeho1/sc1/main/host.sh"
wget -O portsshws https://raw.githubusercontent.com/masjeho1/sc1/main/portsshwstls.sh"
wget -O portsshwsnontls https://raw.githubusercontent.com/masjeho1/sc1/main/portsshwsnontls.sh"
wget -0 wstunnel https://raw.githubusercontent.com/masjeho1/sc1/main/wstunnel.sh"
wget -0 wss.wstunnel https://raw.githubusercontent.com/masjeho1/sc1/main/wsstunnel.sh"
wget -0 privoxy https://raw.githubusercontent.com/masjeho1/sc1/main/privoxy.sh"
wget -0 index.php https://raw.githubusercontent.com/masjeho1/sc1/main/index.php"
wget -O /usr/bin/user-limit https://raw.githubusercontent.com/masjeho1/sc1/main/user-limit.sh && chmod +x /usr/bin/user-limit"
wget -0 privoxy https://raw.githubusercontent.com/masjeho1/sc1/main/privoxy.py"
chmod +x autoreboot
chmod +x addhost
chmod +x menu
chmod +x menu2
chmod +x addssh
chmod +x trialssh
chmod +x delssh
chmod +x member
chmod +x delexp
chmod +x cekssh
chmod +x restart
chmod +x speedtest
chmod +x info
chmod +x about
chmod +x autokill
chmod +x tendang
chmod +x ceklim
chmod +x ram
chmod +x renewssh
chmod +x clearlog
chmod +x changeport
chmod +x portovpn
chmod +x portwg
chmod +x porttrojan
chmod +x portsstp
chmod +x portsquid
chmod +x portv2ray
chmod +x portvless
chmod +x webmin
chmod +x xp
chmod +x swapkvm
chmod +x wg
chmod +x addv2ray
chmod +x addvless
chmod +x addvless-grpc
chmod +x addtrojan
chmod +x delv2ray
chmod +x delvless
chmod +x delvless-grpc
chmod +x deltrojan
chmod +x cekv2ray
chmod +x cekvless
chmod +x cekvless-grpc
chmod +x cektrojan
chmod +x renewv2ray
chmod +x renewvless
chmod +x renewvless-grpc
chmod +x renewtrojan
chmod +x certv2ray
chmod +x addtrgo
chmod +x deltrgo
chmod +x renewtrgo
chmod +x cektrgo
chmod +x bekap
chmod +x l2tp
chmod +x medo
chmod +x menu
chmod +x paneli
chmod +x ppt
chmod +x ssh
chmod +x ssssr
chmod +x sstpp
chmod +x status
chmod +x system
chmod +x trojaan
chmod +x v2raay
chmod +x wgr
chmod +x bbr
chmod +x update
chmod +x bannerku
chmod +x bannerDOMAIN
chmod +x bannerL2TP
chmod +x bannerPPTP
chmod +x bannerSHADOWSOCK
chmod +x bannerSSH
chmod +x bannerSSTP
chmod +x bannerSYSTEM
chmod +x bannerTROJAN
chmod +x bannerV2RAY
chmod +x bannerVPN
chmod +x bannerWIREGUARD
chmod +x addcf
chmod +x cfd
chmod +x cff
chmod +x cfh
chmod +x host
chmod +x bw
chmod +x host
chmod +x portsshwstls
chmod +x portsshwsnontls
chmod +x privoxy
chmod +x wstunnel
chmod +x wsstunnel
chmod +x index.php
chmod +x privoxy
echo "0 5 * * * root clearlog && reboot" >> /etc/crontab
echo "0 0 * * * root xp" >> /etc/crontab
# remove unnecessary files
cd
apt autoclean -y
apt -y remove --purge unscd
apt-get -y --purge remove samba*;
apt-get -y --purge remove bind9*;
apt-get -y remove sendmail*
apt autoremove -y
# finishing
cd
chown -R www-data:www-data /home/vps/public_html
/etc/init.d/nginx restart
/etc/init.d/openvpn restart
/etc/init.d/cron restart
/etc/init.d/ssh restart
/etc/init.d/dropbear restart
/etc/init.d/fail2ban restart
/etc/init.d/sslh restart
/etc/init.d/stunnel5 restart
/etc/init.d/vnstat restart
/etc/init.d/fail2ban restart
/etc/init.d/squid restart
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7400 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7500 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7600 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7700 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7800 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7900 --max-clients 500
history -c
echo "unset HISTFILE" >> /etc/profile
rm -f /root/key.pem
rm -f /root/cert.pem
rm -f /root/ssh-vpn.sh
cd
rm -f /root/key.pem
rm -f /root/cert.pem
rm -f /root/ssh-vpn.sh
#finishing
clear
