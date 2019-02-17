
#### 下载安装:
``` bash
wget -N --no-check-certificate https://raw.githubusercontent.com/tangwulin/node/master/node.sh && chmod +x node.sh && bash node.sh
```
#### 安装后要关闭防火墙：
``` bash
systemctl stop firewalld.service
systemctl disable firewalld.service
```
#### 开机自启：
``` bash
wget -N --no-check-certificate https://raw.githubusercontent.com/tangwulin/node/master/settingautostart.sh && chmod +x settingautostart.sh && bash settingautostart.sh
```
