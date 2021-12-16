FROM ghcr.io/onvrb/sd-tp2-ubuntu-baseimage:master

# set environment variables
ARG DEBIAN_FRONTEND="noninteractive"
ENV LANGUAGE="en_US.UTF-8" \
	LANG="en_US.UTF-8" \
	TERM="xterm" \
	LC_CTYPE=en_US.UTF-8 \
	LC_ALL=en_US.UTF-8

# install nginx
RUN apt update && \
    apt install nginx -y

# remove old nginx config
RUN rm -rf /etc/nginx/nginx.conf

# add local files
COPY root/ /

# ports and volumes
EXPOSE 80 443
VOLUME /config

# start service when creating new container
CMD service nginx start
