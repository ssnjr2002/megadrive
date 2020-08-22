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

# MEGA api
cp /stuff/smegma /usr/local/bin/
sudo chmod 777 /usr/local/bin/smegma
git clone https://github.com/odwyersoftware/mega.py
rm -f /home/mega.py/src/mega/mega.py
mv /stuff/mega_api_mod /home/mega.py/src/mega/mega.py
python3 /home/mega.py/setup.py install
