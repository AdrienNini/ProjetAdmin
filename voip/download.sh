#! /bin/sh



curl -o docker-compose.yml https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/voip/docker-compose.yml
mkdir config
mkdir sounds
curl -o config/extensions.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/voip/config/extensions.conf
curl -o config/logger.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/voip/config/logger.conf
curl -o config/sip.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/voip/config/sip.conf
curl -o config/users.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/voip/config/users.conf
curl -o config/voicemail.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/voip/config/voicemail.conf
curl -o sounds/extensions.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/voip/sounds/extensions.conf
