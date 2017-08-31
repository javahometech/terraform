#! /bin/bash

yum update -y

yum install httpd -y

service httpd start

chkconfig httpd on

echo "<h1>Response from server 1</h1>" > /var/www/html/index.html
