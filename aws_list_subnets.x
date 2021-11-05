#!/bin/bash
#
# Script version 0.0.3
#
# Listado de Subnets de AWS
# alias aw2lsubnets

#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

aws_list_subnets()
{
VER="0.0.1"
##"${1}" == "-?" -o


if [ "${1}" == "" -o "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Listado de subnets existentes en la VPC [$VER]						"
echo "=========================================================="
echo "Format  : aw2lsubnets | aws_list_subnets [vpc]                         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

#Casos de funcionamiento 

# 1- No se pasa nada -- > Informacion de formato

# 2- Se pasa la VPC

# Mostrar las VPCs de la region actual

VPCID=$1

echo "ID : CIDR : AZ : NAME  [ ${VPCID} ]"
echo "-----------------------------------------------------"


NAMES=$(aws ec2 describe-subnets --filter Name=vpc-id,Values=${VPCID} --output yaml | grep Value              | tr "\t" " " | tr -s " " | cut -d " " -f3 | tr "\n" " ")
CIDRS=$(aws ec2 describe-subnets --filter Name=vpc-id,Values=${VPCID} --output yaml | grep "CidrBlock:"       | tr "\t" " " | tr -s " " | cut -d " " -f3 | tr "\n" " ")
SUBIDS=$(aws ec2 describe-subnets --filter Name=vpc-id,Values=${VPCID} --output yaml | grep SubnetId           | tr "\t" " " | tr -s  " " | cut -d " " -f3 | tr "\n" " ")
AZS=$(   aws ec2 describe-subnets --filter Name=vpc-id,Values=${VPCID} --output yaml | grep  AvailabilityZone: | tr "\t" " " | tr -s  " " | cut -d " " -f3 | tr "\n" " ")

c=1
for cidr in ${CIDRS} ; do
name=$(  echo ${NAMES}  | cut -d " " -f${c}  )
subid=$( echo ${SUBIDS} | cut -d " " -f${c}  )
az=$(    echo ${AZS}    | cut -d " " -f${c}  )

echo "${subid} : ${cidr} :${az} : ${name}"

let c++

done

echo "-----------------------------------------------------"


fi
}

