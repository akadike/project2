FROM ubuntu
LABEL "maintainer"="lite4eva@gmail.com"
RUN apt-get update
RUN mkdir /tmp/dockerfiletest
RUN apt-get install -y nginx
COPY index.nginx-debian.html /var/www/html/
CMD nginx -g 'daemon off;'
