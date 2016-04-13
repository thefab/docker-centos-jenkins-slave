FROM thefab/centos-opinionated:latest
MAINTAINER Fabien MARTY <fabien.marty@gmail.com>

RUN yum -y install passwd openssh-server java-1.8.0-openjdk.x86_64 && \
    useradd jenkins && \
    echo jenkins |passwd --stdin jenkins && \
    service sshd start && \
    service sshd stop

EXPOSE 22
ENTRYPOINT []
