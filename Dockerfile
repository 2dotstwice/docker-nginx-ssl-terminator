FROM 2dotstwice/nginx

MAINTAINER Kristof Coomans "kristof@2dotstwice.be"
ENV REFRESHED_AT "2017-02-04 11:13:00"

RUN DEBIAN_FRONTEND=noninteractive apt-get -y --fix-missing -q install openssl

# nginx web interface
EXPOSE 443

CMD supervisord -n -c /etc/supervisor/supervisord.conf
