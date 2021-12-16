FROM ghcr.io/onvrb/sd-tp2-ubuntu-baseimage:master
RUN apt update && \
    apt install apt-utils nginx -y

# ports and volumes
EXPOSE 80 443
VOLUME /config
