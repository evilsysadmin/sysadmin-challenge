#!/usr/bin/env bash

if [ ! -f ops/tls/selfsigned.crt ]; then
  openssl req \
    -new \
    -newkey rsa:4096 \
    -days 365 \
    -nodes \
    -x509 \
    -subj "/C=US/ST=Somewhere/L=Somewhat/O=something/CN=localhost.localdomain" \
    -keyout ops/tls/selfsigned.key \
    -out ops/tls/selfsigned.crt
fi
