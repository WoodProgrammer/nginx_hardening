#!/bin/bash
echo "Non Blocked IP or Domain Address"
read addr
echo "For example your /img/ directories bandwith at your control"
echo '
	location /img/ {
		valid_referers none blocked '"${addr}"';
		if ($invalid_referer) {
			return   403;
		}
	}
'
