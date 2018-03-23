FROM ubuntu:16.04

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN apt-get update \
    && apt-get install -y --no-install-recommends apt-utils \
    && apt-get install -y nginx \
    && apt-get install -y php-fpm php7.0-mysql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:certbot/certbot \
    && apt-get update \
    && apt-get install -y python-certbot-nginx 
    


COPY default /etc/nginx/sites-available/
COPY wt1.ephec-ti.be /etc/nginx/sites-available/
COPY b2b.wt1.ephec-ti.be /etc/nginx/sites-available/
COPY intranet.wt1.ephec-ti.be /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/wt1.ephec-ti.be /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/b2b.wt1.ephec-ti.be /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/intranet.wt1.ephec-ti.be /etc/nginx/sites-enabled/

RUN sed -i -e 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php/7.0/fpm/php.ini

EXPOSE 80 443
CMD service php7.0-fpm start && nginx -g "daemon off;" && certbot certonly --webroot --agree-tos --no-eff-email --email s.fauconnier@students.ephec.be -w /var/www/ -d wt1.ephec-ti.be -d intranet.wt1.ephec-ti.be -d b2b.wt1.ephec-ti.be
