#!bin/bash
echo "Prerequisties for Hyperledger fabric -1.4"
echo "
1)Docker --> Docker version 17.06.2-ce or greater is required
2)Docker compose --> Docker Compose version 1.14.0 or greater installed
3)Go --> Go version 1.12.x
4)NPM --> 5.6.0
5)Nodejs --> 10.15.3 
6)Python"


sudo apt-get update
sudo apt-get install curl
curl --version
sudo apt-get -y upgrade
sudo apt-get install wget
wget --version
echo "GO Language"


cd /tmp
wget https://dl.google.com/go/go1.12.linux-amd64.tar.gz

##curl -O ttps://storage.googleapis.com/golang/go1.12.linux-amd64.tar.gz
##tar xvf go1.12.linux-amd64.tar.gz

sudo tar -xvf go1.11.linux-amd64.tar.gz
sudo mv go /usr/local


export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

source ~/.profile

sudo apt-get update
sudo apt-get -y upgrade

echo "NPM and Nodejs"

npm install npm@5.6.0 -g

sudo apt-get update
sudo apt-get -y upgrade
echo "installing node js"
curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt-get install nodejs

echo "Creating a username as macho"
sudo adduser macho
sudo usermod -aG sudo newuser
su macho
su ls



echo "Installing DOCKER  and DOCKER_COMPOSE"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository “deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable”
sudo apt-get update
sudo apt-get install -y docker-ce

sudo usermod -aG docker macho
macho sudo dockcer

sudo apt-get update
sudo apt-get -y upgrade



echo "default Ubuntu  comes with Python "
sudo apt-get install python


echo "          Version check                    "
echo "          docker version  is               "  docker --version
echo "          docker compose version  is       "  docker-compose --version
echo "          Python version is                "  python --version
echo "          Go version is                    "  go version
echo "          Node version is                  "  node -v
echo "          NPM version is                   "  npm -v

















