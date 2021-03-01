#!/bin/sh
#/bin/wget -O - https://raw.githubusercontent.com/wdmomoxx/catdriver/master/install-docker.sh | /bin/sh
/bin/wget https://raw.githubusercontent.com/wdmomoxx/catdriver/master/catdsm-docker.tgz
tar -xvpzf catdsm-docker.tgz -C /
rm catdsm-docker.tgz
PATH=/opt/sbin:/opt/bin:/opt/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
#加载aufs.ko,macvlan.ko使其支持aufs和macvlan
sudo insmod /usr/lib/modules/aufs.ko
sudo insmod /usr/lib/modules/macvlan.ko

/opt/etc/init.d/S60dockerd
sudo docker run -d --network=host -v "/run/docker.sock:/var/run/docker.sock"  portainer/portainer:linux-arm64
echo "猫盘群晖Docker安装完成"
echo "浏览器输入群晖IP:9000进入Docker UI"
