sudo ip link set eth0 promisc on
sudo insmod /usr/lib/modules/macvlan.ko
sudo docker run -d --net testnet -v /dev:/dev pihole/pihole
