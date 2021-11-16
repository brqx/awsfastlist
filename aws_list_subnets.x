#!/bin/bash
#
# Script version 0.0.2
#
# Listado de Subnets de AWS
# alias aw2lsubnets

#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

aws_list_subnets()
{
VER="0.0.2"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
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

TMP_FILE="/tmp/output_command_brqx"

if [ "$1" == "" ] ; then  
#Caso especial - No se pasa parametro - Miramos variables de entorno

#Suponemos que igual esta definida la variable VPCID
if [ "${VPCID}" != "" ] ; then  
#$1=${VPCID}
# Set cambia todos los argumentos
set -- "${VPCID}"
fi

fi

VPCID=$1

echo "ID : CIDR : AZ : NAME  [ ${VPCID} ]"
echo "-----------------------------------------------------"

#Si se pasa la VPC o se ha definido el parametro

if [ "${VPCID}" != "" ] ; then  
aws ec2 describe-subnets --filter Name=vpc-id,Values=${VPCID} --output yaml > ${TMP_FILE}
else
aws ec2 describe-subnets  --output yaml > ${TMP_FILE}
fi

NAMES=$( cat ${TMP_FILE} | grep Value              | tr "\t" " " | tr -s " " | cut -d " " -f3 | tr "\n" " ")
CIDRS=$( cat ${TMP_FILE} | grep "CidrBlock:"       | tr "\t" " " | tr -s " " | cut -d " " -f3 | tr "\n" " ")
SUBIDS=$(cat ${TMP_FILE} | grep SubnetId           | tr "\t" " " | tr -s  " " | cut -d " " -f3 | tr "\n" " ")
AZS=$(   cat ${TMP_FILE} | grep  AvailabilityZone: | tr "\t" " " | tr -s  " " | cut -d " " -f3 | tr "\n" " ")

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

