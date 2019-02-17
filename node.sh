yum install python-setuptools && easy_install pip
yum install git
wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/libsodium.sh && chmod +x libsodium.sh && bash libsodium.sh
git clone -b manyuser https://github.com/tangwulin/shadowsocks.git      cd shadowsocks
yum -y install python-devel
yum -y install libffi-devel
yum -y install openssl-devel
pip install -r requirements.txt
vi userapiconfig.py
cd shadowsocks
