FROM nginx:latest
MAINTAINER ahangsleben@gmail.com
RUN apt-get update && apt-get install -y --no-install-recommends apache2-utils
COPY html/ /usr/share/nginx/html/
