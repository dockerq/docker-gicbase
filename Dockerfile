FROM ubuntu:14.04
MAINTAINER adolphlwq kenan3015@gmail.com

RUN ln -f -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN apt-get update && \
    apt-get install -y vim supervisor python-setuptools && \
    easy_install pip

ADD supervisord.conf /etc/
CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
