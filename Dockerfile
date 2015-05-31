FROM alpine:edge
RUN apk update
RUN apk add tor --update-cache --repository http://dl-4.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

EXPOSE 9150

RUN rm /var/cache/apk/*

ADD ./torrc /etc/torrc
# Allow you to upgrade your relay without having to regenerate keys
VOLUME /.tor

# Generate a random nickname for the relay
RUN echo "Nickname docker$(head -c 16 /dev/urandom  | sha1sum | cut -c1-10)" >> /etc/torrc

/usr/bin/tor -f /etc/torrc
