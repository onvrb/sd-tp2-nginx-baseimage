FROM ghcr.io/onvrb/sd-tp2-ubuntu-baseimage:master

# fix locales
RUN apt update
RUN apt install locales

# set environment variables
ARG DEBIAN_FRONTEND="noninteractive"
ENV LANGUAGE="en_US.UTF-8" \
	LANG="en_US.UTF-8" \
	TERM="xterm" \
	LC_CTYPE=en_US.UTF-8 \
	LC_ALL=en_US.UTF-8
RUN locale-gen en_US.UTF-8

# install nginx
RUN apt install nginx

# add local files
COPY root/ /

# ports and volumes
EXPOSE 80 443
VOLUME /config

# start service when creating new container
CMD service nginx start
