#Download base image ubuntu 16.04
FROM ubuntu:16.04

# Update Ubuntu Software repository and musql-server
RUN apt-get update

RUN ["/bin/bash", "-c", "debconf-set-selections <<< 'mysql-server mysql-server/root_password password your_password'"]
RUN ["/bin/bash", "-c", "debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password your_password'"]
RUN apt-get install -y \
    mysql-server

# Launch and enable mySql.exe 
CMD service mysql start \
    service mysql enable

# Configure mysql   
#RUN mysql -u root --password='your_password'

