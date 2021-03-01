sudo ip link set eth0 promisc on
sudo insmod /usr/lib/modules/macvlan.ko
sudo docker run -d \
    --name pihole \
    --net macvlan \
    --ip 192.168.22.48 \
    -v /dev:/dev \
    -v "$(pwd)/pihole/etc-pihole/:/etc/pihole/" \
    -v "$(pwd)/pihole/etc-dnsmasq.d/:/etc/dnsmasq.d/" \
    pihole/pihole:latest
