FROM centos:7
RUN yum install epel-release -y 
COPY sensu.repo  /etc/yum.repos.d/sensu.repo
RUN yum install sensu -y
COPY script.sh /etc/sensu/
#Script que inicializa sensu-server y sensu-api
ENTRYPOINT ["/usr/bin/bash"]
EXPOSE 4567 
#Que puertos abrir (api)