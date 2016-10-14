#!/bin/bash
if [[ ! -n "$1" ]] 
then
	echo "Usage: $0 password" 
	exit 1
fi

cd /var/lib/rundeck/bootstrap  && java -cp jetty-all-7.6.0.v20120127.jar \
 org.eclipse.jetty.util.security.Password admin $1 > /tmp/info 2>&1 && \
md5=`cat /tmp/info | grep "^MD5:"` && cd /etc/rundeck && \
sed -i "s/admin:admin/admin: $md5/" realm.properties && \
sed -i "s/framework.server.password = admin/framework.server.password = $1/" realm.properties 
/etc/init.d/rundeckd restart
