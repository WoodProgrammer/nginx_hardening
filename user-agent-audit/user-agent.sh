#!/bin/bash

echo "User Agent is closing [y/n]"
read choice 

if [ "$choice" -eq 'y' ];
	touch /etc/nginx/blockuseragents.rules;	
	echo " map $http_user_agent $blockedagent { 
default         0;
~*malicious     1;
~*bot           1;
~*backdoor      1;
~*crawler       1;
~*bandit        1;
}
"  > /etc/nginx/blockuseragents.rules

	
else 	
	exit 1;
fi;

