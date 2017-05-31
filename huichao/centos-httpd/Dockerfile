FROM centos:latest
MAINTAINER The CentOS Project <cloud-ops@centos.org>
LABEL Vendor="CentOS" \
      License=GPLv2 \
      Version=2.4.6-40

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install httpd php php-mysql && \
    yum clean all

RUN rm -f /etc/httpd/conf/httpd.conf 
RUN mkdir -p /web/htdocs

#COPY file/index.php /web/htdocs/index.php
COPY file/httpd.conf /etc/httpd/conf/httpd.conf

EXPOSE 80

CMD ["/usr/sbin/apachectl","-DFOREGROUND"]
