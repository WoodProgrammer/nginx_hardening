#!/bin/bash
echo "Service config file path"
read service_config_file_path

echo "client_body_buffer_size" 
read client_body

echo "client_header_buffer_size"
read client_header

echo "client_max_body_size" 
read client_max_body 


echo "
	client_body_buffer_size $client_body k;
	client_header_buffer_size $client_header k;
	client_max_body_size $client_max_body k;
	
" > $service_config_file_path

