#! /bin/sh

# MAIL
mkdir mail;
mkdir mail/config;
mkdir mail/config/opendkim;
mkdir mail/config/opendkim/keys;
mkdir mail/config/opendkim/keys/wt1.ephec-ti.be;
curl -o mail/setup.sh https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/mail/setup.sh; chmod a+x ./setup.sh
curl -o mail/.env https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/mail/.env;
curl -o mail/config/chksum https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/mail/config/chksum;
curl -o mail/config/postfix-accounts.cf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/mail/config/postfix-accounts.cf;
curl -o mail/config/opendkim/KeyTable https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/mail/config/opendkim/KeyTable;
curl -o mail/config/opendkim/SigningTable https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/mail/config/opendkim/SigningTable;
curl -o mail/config/opendkim/TrustedHosts https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/mail/config/opendkim/TrustedHosts;
curl -o mail/config/opendkim/keys/wt1.ephec-ti.be/mail.private https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/mail/config/opendkim/keys/wt1.ephec-ti.be/mail.private;
curl -o mail/config/opendkim/keys/wt1.ephec-ti.be/mail.txt https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/mail/config/opendkim/keys/wt1.ephec-ti.be/mail.txt;

# VOIP
mkdir voip;
mkdir voip/sounds;
curl -o voip/extensions.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/voip/config/extensions.conf
curl -o voip/logger.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/voip/config/logger.conf
curl -o voip/sip.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/voip/config/sip.conf
curl -o voip/users.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/voip/config/users.conf
curl -o voip/voicemail.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/voip/config/voicemail.conf
curl -o voip/sounds/extensions.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/voip/sounds/extensions.conf
curl -o voip/iax.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/voip/config/iax.conf
curl -o voip/queues.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/voip/config/queues.conf
