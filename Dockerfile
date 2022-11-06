
FROM centos:latest
MAINTAINER saddammujawar@gmail.com
RUN yum install -y httpd \
zip\
unzip
ADD https:// www. free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/*.
RUN rm -rf_MACOSX markups-kindle kindle.zip
CMD ["/ust/sbin/nttpd, "0", "FOREGROUND")
EXPOSE 80

