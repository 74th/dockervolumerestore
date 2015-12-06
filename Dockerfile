FROM busybox:latest
MAINTAINER 74th<site@j74th.com>

ADD ./restore.sh /root/ 
WORKDIR /target
VOLUME /target
VOLUME /import
ENV TARGETFILE backup.tar.gz

ENTRYPOINT /bin/sh /root/restore.sh