#!/bin/bash
for i in $(cat encrypt_decrypt_input.txt); do 
echo -e ",";
	curl -X POST http://localhost:10040/token-service-provider-1.0/api/cube-one/encrypt -H 'cache-control: no-cache' -H 'content-type: application/json' -H 'postman-token: a4b45d12-d33a-aba1-6b82-e03ff79029b7' -d '{"requestData" : '\"$i\"',"policy":"CUSTOMER_INFO"}';
done > encrypt_decrypt_output.txt