#### Developer Virtual Machine

You are required to install the following software on your computer prior to running any commands:

- [VirtualBox](https://www.virtualbox.org/) - Create and run a virtual development environment
- [git](http://git-scm.com/) - Version control system
- [Vagrant](https://www.vagrantup.com/) - Provision a virtual machine

#### Mac Instructions
Open up Terminal, copy and paste this entire command, then hit enter
```bash
cd ~/Desktop; cd VirtualMachines; vagrant destroy; cd ~/Desktop; rm -rf htdocs; rm -rf VirtualMachines; mkdir VirtualMachines; mkdir htdocs; echo "<?php phpinfo();" > htdocs/index.php; cd VirtualMachines; curl https://gist.githubusercontent.com/sameg14/9e31709d132e6494ec1d/raw/158664c9962a5f17edb2c02054ba7e5bbc8b80ae/VagrantFile > VagrantFile; vagrant up; vagrant ssh;
```
