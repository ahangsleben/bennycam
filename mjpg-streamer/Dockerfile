FROM ubuntu:latest
MAINTAINER ahangsleben@gmail.com
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      cmake \
      libjpeg8-dev \
      gcc \
      g++ \
      unzip \
      make
ADD https://github.com/jacksonliam/mjpg-streamer/archive/master.zip /opt
RUN cd /opt \
 && unzip master.zip \
 && cd mjpg-streamer-master/mjpg-streamer-experimental \
 && make \
 && mkdir /opt/mjpg-streamer \
 && cp -t /opt/mjpg-streamer mjpg_streamer input_uvc.so output_http.so


FROM ubuntu:latest
MAINTAINER ahangsleben@gmail.com
WORKDIR /opt
COPY --from=0 /opt/mjpg-streamer/ .
CMD /opt/mjpg_streamer -i "/opt/input_uvc.so /dev/video0 -r 640x480 -n" -o "/opt/output_http.so -p 8080"
