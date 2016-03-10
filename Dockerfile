FROM thefab/centos-opinionated:centos6
MAINTAINER Fabien MARTY <fabien.marty@gmail.com>

ENV DCO_CRONIE_START=0 \
    DCO_RSYSLOG_START=0

RUN yum -y install passwd openssh-server java-1.8.0-openjdk.x86_64 && \
    useradd jenkins && \
    echo jenkins |passwd --stdin jenkins && \
    service sshd start && \
    service sshd stop

EXPOSE 22
ENTRYPOINT []
