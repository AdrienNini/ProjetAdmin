#! /bin/sh

# DNS
mkdir dns;
curl -o dns/named.conf https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/named.conf;
curl -o dns/named.conf.default-zones https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/named.conf.default-zones;
curl -o dns/named.conf.local https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/named.conf.local;
curl -o dns/named.conf.options https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/named.conf.options;
curl -o dns/db.internal.wt1.ephec-ti.be https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/db.internal.wt1.ephec-ti.be;
curl -o dns/db.wt1.ephec-ti.be https://raw.githubusercontent.com/AdrienNini/ProjetAdmin/master/dns/SOA/config/db.wt1.ephec-ti.be;

