FROM ubuntu:16.04

RUN apt-get update && apt-get install -y bind9

WORKDIR /etc/bind

COPY ./named.conf ./named.conf
COPY ./db.webtest.local ./db.webtest.local

EXPOSE 53 53/udp
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]