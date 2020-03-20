export DEBIAN_FRONTEND=noninteractive
export COMPOSE_VER=1.25.3

sudo apt remove -y docker docker-engine docker.io containerd runc

# docker-ce
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

# docker-compose
if [ ! -e /usr/local/bin/docker-compose ]; then
    sudo wget https://github.com/docker/compose/releases/download/${COMPOSE_VER}/docker-compose-Linux-x86_64 -O /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    sudo gpasswd -a ${USER} docker
fi

# ctop
if [ ! -e /usr/local/bin/ctop ]; then
    sudo wget https://github.com/bcicen/ctop/releases/download/v0.7.1/ctop-0.7.1-linux-amd64 -O /usr/local/bin/ctop
    sudo chmod +x /usr/local/bin/ctop
fi

echo "[docker] "`/usr/bin/docker -v`
echo "[docker-compose] "`/usr/local/bin/docker-compose -v`
