
FROM centos:latest
MAINTAINER saddammujawar@gmail.com
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Linux-*
RUN yum update -y \ yum install -y httpd \ zip \ unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/cs.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip cs.zip
RUN cp -rvf cs/* .
RUN rm -rf cs cs.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80


