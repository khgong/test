FROM ubuntu:18.04
MAINTAINER kh <khgong@sysintec.co.kr>

RUN \
    apt-get update && \
    apt-get install -y apache2

ADD index.html /var/www/html/index.html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
