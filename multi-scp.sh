#!/bin/bash

input="file.txt"

while IFS= read -r line
do
scp -i key.pem /path/to/source/file user@$line:/path/to/destination
done < $input
