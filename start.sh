#!/bin/sh

chmod -R a+rX $THTTPD_DIR
exec /usr/sbin/thttpd -D -p $THTTPD_PORT -dd $THTTPD_DIR -u $THTTPD_USER -l $THTTPD_LOGFILE

