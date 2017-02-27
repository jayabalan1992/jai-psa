FROM ubuntu:14.04
#
RUN apt-get update && apt-get install apache2 -y

EXPOSE 80

COPY ./explore_california/. ./var/www/html/
#
#
CMD ["service","apache2","start"]
