FROM ubuntu:latest
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      cmake \
      gcc \
      g++ \
      unzip \
      make
ADD http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz /opt
RUN cd /opt \
 && tar xzf noip-duc-linux.tar.gz \
 && cd noip-2.1.9-1 \
 && make

FROM ubuntu:latest
MAINTAINER ahangsleben@gmail.com
WORKDIR /opt
COPY --from=0 /opt/noip-2.1.9-1/noip2 .
RUN mkdir /external
ENTRYPOINT ["/opt/noip2", "-c", "/external/noip.conf"]
