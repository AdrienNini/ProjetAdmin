FROM ubuntu:16.04

RUN apt-get update && apt-get install -y bind9

WORKDIR /etc/bind

COPY ./named.conf ./named.conf
COPY ./named.conf.options ./named.conf.options
COPY ./named.conf.local ./named.conf.local
COPY ./named.conf.default-zones ./named.conf.default-zones
COPY ./db.wt1.ephec-ti.be ./db.wt1.ephec-ti.be
COPY ./db.internal.wt1.ephec-ti.be ./db.internal.wt1.ephec-ti.be

EXPOSE 53 53/udp
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]