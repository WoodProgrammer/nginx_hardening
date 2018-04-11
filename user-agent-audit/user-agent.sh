#!/bin/bash

echo "User Agent is closing [y/n]"
read choice

if [ "$choice" = 'y' ];
then
	touch /etc/nginx/blockuseragents.rules;
	echo ' map $http_user_agent $blockedagent { default         0; ~*malicious     1; ~*bot           1; ~*backdoor      1; ~*crawler       1; ~*bandit        1; }
'  > /etc/nginx/blockuseragents.rules

LIB_LINE=$(grep -n include /etc/nginx/nginx.conf | awk '{print $1} '| sed 's/[^0-9]*//g' |awk '$0>x{x=$0};END{print x}')
echo $LIB_LINE

sed -i "$LIB_LINE i\ include /etc/nginx/blockuseragents.rules;\ " /etc/nginx/nginx.conf
else
	exit 1;
fi;



map $http_user_agent $blockedagent {
default         0;
~*malicious     1;
~*bot           1;
~*backdoor      1;
~*crawler       1;
~*bandit        1;
}