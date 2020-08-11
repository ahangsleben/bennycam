#!/bin/bash
docker build . -t noip:local
mkdir conf
docker run -it --rm -v "$PWD/conf":/external noip:local -C
