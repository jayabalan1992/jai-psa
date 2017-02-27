FROM ubuntu:14.04
#
RUN apt-get update && apt-get install apache2 -y

COPY -a /explore_california/. /var/www/html/ 
#
#
