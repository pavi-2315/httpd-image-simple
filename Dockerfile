FROM ubuntu:15.10
MAINTAINER "Rene Gielen" <rgielen@apache.org>

RUN apt-get update && apt-get upgrade \
	&& apt-get install -y --no-install-recommends \
		apache2 \
    curl

COPY httpd-foreground /usr/local/bin/

EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
