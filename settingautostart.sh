cd /etc/rc.d/
rm -rf rc.local
wget -N --no-check-certificate https://raw.githubusercontent.com/tangwulin/node/master/rc.local
chmod +x /etc/rc.d/rc.local

