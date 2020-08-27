# awsfastlist    - LANGUAGES: English | Spanish [pending]
AWS Client Command List - Lightsail based - 2020 Farmacia Zaragoza
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

create_architecture.sh         --> Main file

create_instances.sh       --> Generate the three lightsail instances

run_cluster.sh            --> Generate Kubernetes cluster in lightsail instances

delete_cluster.sh         --> Remove lightsail instances

install_prereqs_ubuntu.sh --> Script what will update ubuntu instances to kubernetes needed

Note: We have a method to generate these scripts preparing a fast debug step numbers to check problems inside instances

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
