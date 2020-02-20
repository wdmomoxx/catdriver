#增加一个proxy macvlan
sudo ip link add proxy link eth0 type macvlan mode bridge
sudo ip addr add 192.168.22.34/24 dev proxy
sudo ip link set dev proxy up

sudo docker network create --driver=macvlan --gateway=192.168.22.11 --subnet=192.168.22.0/24 --ip-range=192.168.22.148/24 -o macvlan_mode=bridge -o parent=proxy proxy
