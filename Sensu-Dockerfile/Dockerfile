FROM centos:7
RUN yum install epel-release -y 
COPY sensu.repo  /etc/yum.repos.d/sensu.repo
RUN yum install sensu -y 
RUN yum install redis -y
COPY rabbitmq-earlang.repo /etc/yum.repos.d/
RUN curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.rpm.sh | bash
RUN yum install rabbitmq-server-3.7.7-1.el7.noarch -y
COPY script.sh /etc/sensu/
ENTRYPOINT ["/usr/bin/bash"]
EXPOSE 4567 #puerto de API