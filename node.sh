echo auto-node  only Centos!
sleep 2
echo 该脚本仅限12138私人使用！
sleep 2
yum install python-setuptools && easy_install pip
yum install git
yum -y groupinstall "Development Tools"
wget https://github.com/jedisct1/libsodium/releases/download/1.0.10/libsodium-1.0.10.tar.gz
tar xf libsodium-1.0.10.tar.gz && cd libsodium-1.0.10
./configure && make -j2 && make install
echo /usr/local/lib > /etc/ld.so.conf.d/usr_local_lib.conf
ldconfig
git clone -b manyuser https://github.com/tangwulin/shadowsocks.git
cd shadowsocks
yum -y install python-devel
yum -y install libffi-devel
yum -y install openssl-devel
pip install -r requirements.txt
echo 准备好了吗？下面开始配置设置。
sleep 5
vi userapiconfig.py
cd shadowsocks
echo 准备启动调试模式……
sleep 5
python server.py
systemctl stop firewalld.service
systemctl disable firewalld.service
cd shadowsocks
