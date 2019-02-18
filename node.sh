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
