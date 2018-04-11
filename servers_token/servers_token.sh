#!/bin/bash
echo "Which config file you want to add ? "
read service_config_path

echo "Config file_name "
read service_config_file

server_line_main=$(grep -i -n "listen " $service_config_file | awk '{print $1} '| sed 's/[^0-9]*//g' |awk '$0>x{x=$0};END{print x}')


sed -i ' '"${server_line_main}"' i\server_tokens        off; \'  $service_config_path
