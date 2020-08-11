#!/bin/bash
docker build . -t nginx:local
mkdir conf
docker run -it --rm -v "$PWD/conf":/external nginx:local htpasswd -c /external/htpasswd Benny
