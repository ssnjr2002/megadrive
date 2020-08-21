#!bin/sh

# put your commands to install extra shit below:
# Check your logs on heroku to see if you were sucessfull

echo "NOTICE: extras.sh is runnning"

# Python
apt-get install -y python \
                   python-pip \
                   python3 \
                   python3-pip

# Install gclone:
apt-get install -y systemd golang unzip
curl -s https://raw.githubusercontent.com/oneindex/script/master/gclone.sh | sudo bash

# MEGA.NZ gclone script
cp /stuff/mega /usr/local/bin/mega
sudo chmod 777 /usr/local/bin/mega
