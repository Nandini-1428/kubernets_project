FROM centos:latest
RUN yum install -y httpd \
  zip\
  unzip
ADD https://www.free-css.com/free-css-templates/page295/guarder /var/www/html/
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/www/html", "-D", "FOREGROUND"] 
EXPOSE 80 22