FROM centos:latest
MAINTAINER harshitasao@gmail.com
RUN yum install -y http \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page1/academic-education.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip academic-education.zip
RUN cp -rvf academic-education/* .
RUN rm -rf academic-education.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
