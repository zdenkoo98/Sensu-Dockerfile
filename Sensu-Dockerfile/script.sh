#!/bin/bash
rabbitmqctl add_vhost /sensu
rabbitmqctl add_user sensu secret
rabbitmqctl set_permissions -p /sensu sensu ".*" ".*" ".*"
/sbin/rabbitmq-server
/opt/sensu/embedded/bin/sensu-server
/opt/sensu/embedded/bin/sensu-api