FROM fedora

EXPOSE 80
EXPOSE 443

RUN yum -y install thttpd
RUN echo "Hello world" > /var/www/thttpd/hello.html

ENV THTTPD_PORT 80
ENV THTTPD_USER thttpd
ENV THTTPD_DIR /var/www/thttpd
ENV THTTPD_LOGFILE /var/log/thttpd.log

ADD start.sh /start.sh
CMD ["/start.sh"]

