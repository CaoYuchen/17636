FROM httpd:2.4
LABEL maintainer="yuchenca@andrew.cmu.edu"
COPY ./catfile /usr/local/apache2/htdocs/
RUN apt-get update && apt-get install -y iputils-ping
