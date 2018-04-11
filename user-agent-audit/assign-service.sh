#!/bin/bash

echo "Which config file you want to add ? "
read service_config_path

echo "Config file_name "
read service_config_file


pushd $service_config_path

server_line_main=$(grep -n "server{" $service_config_file | awk '{print $1} '| sed 's/[^0-9]*//g' |awk '$0>x{x=$0};END{print x}')
server_line_main=$(($server_line_main + 1))

sed -i ' '"${server_line_main}"' i\if ($blockedagent){return 403;}\'  $service_config_path

popd


