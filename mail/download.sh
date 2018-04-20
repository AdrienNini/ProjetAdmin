#! /bin/sh

curl -o setup.sh https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/dev/mail/setup.sh; chmod a+x ./setup.sh
curl -o docker-compose.yml https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/dev/mail/docker-compose.yml;
curl -o .env https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/dev/mail/.env;
mkdir config;
mkdir config/opendkim;
mkdir config/opendkim/keys;
mkdir config/opendkim/keys/wt1.ephec-ti.be;
curl -o config/chksum https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/dev/mail/config/chksum;
curl -o config/postfix-accounts.cf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/dev/mail/config/postfix-accounts.cf;
curl -o config/opendkim/KeyTable https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/dev/mail/config/opendkim/KeyTable;
curl -o config/opendkim/SigningTable https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/dev/mail/config/opendkim/SigningTable;
curl -o config/opendkim/TrustedHosts https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/dev/mail/config/opendkim/TrustedHosts;
curl -o config/opendkim/keys/wt1.ephec-ti.be/mail.private https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/dev/mail/config/opendkim/keys/wt1.ephec-ti.be/mail.private;
curl -o config/opendkim/keys/wt1.ephec-ti.be/mail.txt https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/dev/mail/config/opendkim/keys/wt1.ephec-ti.be/mail.txt;