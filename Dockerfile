FROM centos:latest
RUN yum install -y http \
ADD https://github.com/harshitasao/k8s-project/blob/master/index.html  /var/www/html/
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
