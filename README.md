
#### 下载安装:
``` bash
wget -N --no-check-certificate https://raw.githubusercontent.com/tangwulin/node/master/node.sh && chmod +x node.sh && bash node.sh
```
#### 安装后要关闭防火墙：
``` bash
systemctl stop firewalld.service
systemctl disable firewalld.service
```
#### 安装必要的libsodium：
``` bash
yum -y groupinstall "Development Tools"
wget https://github.com/jedisct1/libsodium/releases/download/1.0.10/libsodium-1.0.10.tar.gz
tar xf libsodium-1.0.10.tar.gz && cd libsodium-1.0.10
./configure && make -j2 && make install
echo /usr/local/lib > /etc/ld.so.conf.d/usr_local_lib.conf
ldconfig
```
#### 开机自启：
``` bash
wget -N --no-check-certificate https://raw.githubusercontent.com/tangwulin/node/master/settingautostart.sh && chmod +x settingautostart.sh && bash settingautostart.sh
```
