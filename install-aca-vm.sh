#!/bin/bash

#original script context
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Provision machine
cd "$DIR"
:
cd vms/aca.vm
:

# Bring up the VM, provisioning will happen here as well
vagrant up;

# SSH into VM
vagrant ssh