cd /etc/rc.d/init.d
wget -N --no-check-certificate https://raw.githubusercontent.com/tangwulin/node/master/autostart.sh && chmod +x autostart.sh && bash autostart.sh
chmod +x  /etc/rc.d/init.d/autostart.sh
cd /etc/rc.d/init.d
chkconfig --add autostart.sh
chkconfig autostart.sh on
