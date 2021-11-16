# awsfastlist    - LANGUAGES: English | Spanish [pending] | Last Update 16 Nov 2021
AWS Client Command List - Lightsail based - 2021 Farmacia Zaragoza
AWS Cloud Learning and Reinventing - Brqx 
--------------------------------------------------------------------------------------------
https://www.linkedin.com/in/brqxng/?locale=en_US
--------------------------------------------------------------------------------------------
Site - https://brqx.es/en
--------------------------------------------------------------------------------------------
This project is a part of : 

https://github.com/brqx/unixarchitectures/

We have created a first fast commands to list aws resources

Our target is to get an agile method to minimize clicks in Aws Console

This is a simple set of scripts to list aws resources ( EC2 , Lightsail , Amis , Bundles )

# Prerequisites

* You need to have downloaded the default SSH key for your Lightsail instances.
* Have fully setting of .aws/config file
* The script uses the AWS cli to create the Lightsail instances, so you will need that installed and configured on your local machine. 
* Have exported KEY (pem file) and KEYPAIRCREATE (pub file) to access to instance

## Usage

* Clone this repo onto your local machine

        git clone https://github.com/brqx/awsfastlist

* Enter into the repo directory

* Make sure all the scripts are executable

        sudo chmod +x *.sh

* Create structure

        . ./start_architecture.sh 
        
        or
        
        . ./r.x
        
Why run script with dot ? 

In our method to manage unix scripting we define functions. 

If we run script with a dot, we could to reuse these functions to test scripts behaviour

## Information

Amazon entities deployed : EC2 - LightSail - Ami - Bundle

## Real description 

What we do in this script is the following : 

1. Generate an unix architecture
2. Load architecture

In archiecture we have different method to work

1. Generate fast files
2. Use fast commands 

This script have been tested in 2020 in ubuntu and centos latest versions.

## Specific file information

load_architecture.sh         --> Main file

functions.sh       --> Generate the three lightsail instances

scripts.sh            --> Generate Kubernetes cluster in lightsail instances

## Improvements

To speed up Aws working we have improved architecture with global variables what will be runned once

REGIONS --> List of any AWS REGION

VPCID --> ID of current VPC

## How to work

1. Define DATS variable path and load architecture

. load_architecture.sh

2. Generate fast result files to have instant work

aws_list_amis_slow_ec2    > ${DATS}fast_result_amis_new.dat 
aws_list_bundles_slow_ec2 > ${DATS}dats/fast_result_bundles_new.dat 


3. Use fast functions with your own aws structure

==============================================================================================================================

# lightsail-k8s
Implementación de Kubernetes - Basado en Lightsail - 2020 Farmacia Zaragoza
Aprendizaje y reinvención en la nube de AWS - Brqx
-------------------------------------------------- ------------------------------------------
https://www.linkedin.com/in/brqxng/?locale=en_US
-------------------------------------------------- ------------------------------------------
Sitio - https://brqx.es/en
-------------------------------------------------- ------------------------------------------

- Pending - 
