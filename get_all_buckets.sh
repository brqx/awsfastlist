#!/bin/bash
# Brqx 2021
# Obtener todos los buckets de aws y su region
# Get all buckets with regions in aws

for i in $(aws --no-verify-ssl s3api list-buckets --query "Buckets[].Name" 2> /dev/null | cut -d " " -f2); 
do 
REG=$(aws s3api get-bucket-location --bucket $i | cut -d " " -f2 ); echo "$i:$REG"; 
done

Output : 

brqx.eu:eu-west-3
brqxng.com:us-east-2
fz1:eu-west-3
fz3:eu-west-1
...


