#!/bin/bash

#####################################################
# Setup a new development environment for aca.vm   ##
#### @author spatel     #############################
#### @since 2015-01-17  #############################
#####################################################

DIRECTORY=/htdocs/ACAShop

#exit;
#original script context
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [ -d "$DIRECTORY" ]; then
    mkdir -p "/htdocs"
fi

# Checkout code
git clone git@github.com:AustinCodingAcademy/ACAShop.git "$DIRECTORY"
cd "$DIRECTORY"
:
composer install --no-interaction;
composer update --no-interaction;
php app/console assetic:dump;

# Provision machine
cd "$DIR"
:
cd ../vms/aca.vm
:
vagrant up;
#vagrant provision;

# SSH into VM
vagrant ssh
