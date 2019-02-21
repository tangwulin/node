yum install python-setuptools && easy_install pip
yum install git
git clone -b manyuser https://github.com/tangwulin/shadowsocks.git
sleep 2
cd shadowsocks
yum -y install python-devel
yum -y install libffi-devel
yum -y install openssl-devel
pip install -r requirements.txt
vi userapiconfig.py
sleep 2
cd shadowsocks
yum -y groupinstall "Development Tools"
wget https://github.com/jedisct1/libsodium/releases/download/1.0.10/libsodium-1.0.10.tar.gz
tar xf libsodium-1.0.10.tar.gz && cd libsodium-1.0.10
./configure && make -j2 && make install
echo /usr/local/lib > /etc/ld.so.conf.d/usr_local_lib.conf
ldconfig
sleep 2
systemctl stop firewalld.service
systemctl disable firewalld.service
chmod +x /etc/rc.d/rc.local
echo "/root/shadowsocks/run.sh">>/etc/rc.d/rc.local
echo "nameserver 1.1.1.1">>/etc/resolv.conf
echo "nameserver 8.8.8.8">>/etc/resolv.conf
cd /root/shadowsocks/
bash run.sh



