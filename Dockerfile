FROM centos:8

RUN set -eux; \
    export LC_ALL=C; \
    yum update -y; \
    yum install -y epel-release yum-utils createrepo

#RUN rm -rf /etc/yum.repos.d/*
COPY repo/*.repo /etc/yum.repos.d/
COPY repo/*.sh /usr/local/bin/
COPY /entrypoint.sh /
RUN chmod +x /usr/local/bin/*.sh /entrypoint.sh

VOLUME [ "/data" ]

ENTRYPOINT ["/entrypoint.sh"]
CMD ["start.sh"]
