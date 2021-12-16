FROM ghcr.io/onvrb/sd-tp2-ubuntu-baseimage:master
RUN apt update && \
    apt install nginx -y

# ports and volumes
EXPOSE 80 443
VOLUME /config
