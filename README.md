# Auditing Nginx 
This tool is auditing to some Nginx values for secure serving web content and happly :)) 
Listed at below which rules added until today 

*   User Agent Auditing 
    - For detection : 
        ```sh
            $ cd user-agent-audit
            $ ./auditing_detect.sh
        ```
        If you get 'OK' result you have passed with this auditing tool .

*   Server Tokens
    - For detection:
        ```sh
            $ curl HOST/address_for_404 
        ```
        
        If you have any information about version of Nginx Server you passed from that rule .

        
*	Buffer Size Control

	- If you control the block size of request you can use that  script.
	```sh
        $ cd buffer_size
        $ ./buffer_size
    ```




        
*	Prevent Image Hotlinking

	- If other servers getting images from your domain, server, cdn or anything else. This will be spend your bandwith out of your control.
	- So you can handle this problem shown at as above.

	```sh
        $ cd hotlink 
        $ ./blocker.sh 
    ```
    