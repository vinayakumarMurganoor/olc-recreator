echo "Installation script of docker started!"

sudo apt update

sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt update

sudo apt install docker-ce -y

sudo usermod -aG docker $USER

sudo systemctl start docker

newgrp docker

echo "Installation script of docker completed!"
