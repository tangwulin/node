clear
yum install -y screen
clear
echo 如中途离开，请使用screen -r node_install回到当前会话
sleep 5
#创建一个screen会话
screen -U -S node_install
echo 安装基础工具包
sleep 2
yum install python-setuptools && easy_install pip
yum install git
clear
echo 从Git下载主文件
sleep 2
git clone -b manyuser https://github.com/tangwulin/shadowsocks.git
sleep 2
clear
echo 安装运行环境
sleep 2
cd shadowsocks
yum -y install python-devel
yum -y install libffi-devel
yum -y install openssl-devel
pip install -r requirements.txt
clear
echo 准备设置配置文件……
vi userapiconfig.py
sleep 2
clear
echo 安装Libsodium库
cd shadowsocks
yum -y groupinstall "Development Tools" && wget https://github.com/jedisct1/libsodium/releases/download/1.0.10/libsodium-1.0.10.tar.gz && tar xf libsodium-1.0.10.tar.gz && cd libsodium-1.0.10 &&configure && make -j2 && make install && echo /usr/local/lib > /etc/ld.so.conf.d/usr_local_lib.conf &&ldconfig
sleep 2
clear
echo 关闭防火墙
#关掉这讨厌的防火墙！
systemctl stop firewalld.service
systemctl disable firewalld.service
clear
echo 设置开机自启和守护
#开机自启部分，原理有问题，有空再填坑
chmod +x /etc/rc.d/rc.local
echo "/root/shadowsocks/run.sh">>/etc/rc.d/rc.local
#5分钟启动一次节点，以防开机自启失败
echo "*/5 * * * * /root/shadowsocks/run.sh >> /tmp/tmp.txt" >> /var/spool/cron/root
clear
echo 更换DNS
#更换DNS
echo "nameserver 1.1.1.1">>/etc/resolv.conf
echo "nameserver 8.8.8.8">>/etc/resolv.conf
clear
echo 启动节点中
#最后启动一次
cd /root/shadowsocks/
bash run.sh
echo 完成！请根据输出判断结果！



