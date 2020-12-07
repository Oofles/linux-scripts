#!/bin/bash

for server in $(cat file.txt);
do
ssh -i key.pem user@${server} 'LINUX COMMAND'
done
