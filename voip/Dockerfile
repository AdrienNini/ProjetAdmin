#Download base image ubuntu 16.04
FROM ubuntu:16.04

# Update Ubuntu Software repository and musql-server
RUN apt-get update

RUN apt-get -y install asterisk
RUN sed -i "s/rtpstart=10000/rtpstart=16384/g" /etc/asterisk/rtp.conf
RUN sed -i "s/rtpend=20000/rtpend=16394/g" /etc/asterisk/rtp.conf

CMD  /etc/init.d/asterisk start

