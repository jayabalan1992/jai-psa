FROM centos:latest
MAINTAINER jayabalan.com

RUN yum update && yum install -y httpd

ADD index.html /var/www/html

EXPOSE 80

CMD ["/usr/sbin/httpd","-D',"FOREGROUND"]
