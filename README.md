catdriver dsm docker support
```
/bin/wget -O - https://raw.githubusercontent.com/wdmomoxx/catdriver/master/install-docker.sh | /bin/sh
```
#在原fork的基础上，将docker 改为支持aufs，这样启动速度好很多。

需要使用/opt/etc/init.d/Dockerd,和/etc/docker/daemon.json覆盖掉原来的。

#pihole.sh 使用macvlan启动pihole

首先创建一个macvlan类型的macvlan

sudo docker network create --driver=macvlan --gateway=192.168.22.55 --subnet=192.168.22.0/24 --ip-range=192.168.22.48/28 -o macvlan_mode=bridge -o parent=eth0 macvlan
