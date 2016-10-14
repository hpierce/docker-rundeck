#!/bin/bash

ipaddr=`ip addr | grep -w inet | grep -v 127.0.0.1 | awk '{print $2}' | cut -d\/ -f1` && cd /etc/rundeck && sed -i "s/localhost/$ipaddr/" *.properties &&  echo "Please use http://$ipaddr:4440 as your website"
/etc/init.d/rundeckd restart

