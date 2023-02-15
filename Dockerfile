FROM ubuntu
LABEL "maintainer"="sk12k@simplilearn.net"
RUN apt-get update
RUN mkdir /tmp/dockerfiletest
RUN apt-get install -y nginx
COPY index.nginx-debian.html /var/www/ht
CMD nginx -g 'daemon off;'
