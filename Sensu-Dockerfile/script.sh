#!/bin/bash
/opt/sensu/embedded/bin/sensu-server -b -c #Replace with path to config.json or -d to config_dir path
sleep(3)
/opt/sensu/embedded/bin/sensu-api -b -c #Replace with path to config.json or -d to config_dir
