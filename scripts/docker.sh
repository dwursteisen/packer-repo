echo "Update Kernel for Docker"
apt-get -y --force-yes install linux-image-generic-lts-raring linux-headers-generic-lts-raring 

echo "Install Docker"
sh -c "wget -qO- https://get.docker.io/gpg | apt-key add -"
sh -c "echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"

apt-get -y --force-yes update
apt-get -y --force-yes install lxc-docker
