#!/bin/bash

pwd=`pwd`

docker run  \
    -d --restart=unless-stopped \
    -p 1812-1813:1812-1813/udp \
    -v $pwd/cert.pem:/etc/raddb/cert.pem \
    -v $pwd/key.pem:/etc/raddb/key.pem \
    frrsp

