FROM centos:7
RUN yum install epel-release -y 
COPY sensu.repo  /etc/yum.repos.d/sensu.repo
RUN yum install sensu -y
COPY script.sh /etc/sensu/
#Script that starts sensu-server and sensu-api
ENTRYPOINT ["/usr/bin/bash"]
EXPOSE 4567 
#Add next to expose which ports you want to open (4567 sensu-api default installation port)
