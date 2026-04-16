!#/bin/bash
echo "Starting Waydroid container..."

waydroid show-full-ui   

# Set the host-side IP for the bridge
sudo ip addr add 192.168.240.1/24 dev waydroid0
sudo ip link set waydroid0 up

# Ensure the container has its IP
sudo waydroid shell ip addr add 192.168.240.112/24 dev eth0
sudo waydroid shell ip link set eth0 up
