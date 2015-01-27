## ACA - Virtual Machines

You are required to install the following software on your computer prior to running any commands:

- [git](http://git-scm.com/) - Version control system
- [VirtualBox](https://www.virtualbox.org/) - Create and run a virtual development environment
- [Vagrant](https://www.vagrantup.com/) - Provision a virtual machine
- [Ansible](http://docs.ansible.com/intro_installation.html) - Configure the VM

In order to install the ACA virtual machine, run the following command
 
``` bash
cd ~/Desktop; mkdir htdocs; sudo ln -s ~/Desktop/htdocs /htdocs; mkdir -p ~/Desktop/htdocs/ACAShop; git clone git@github.com:AustinCodingAcademy/VirtualMachines.git; sudo echo "10.10.10.60     aca.vm" > /etc/hosts; sudo echo "10.10.10.60     acashop.local" > /etc/hosts; cd VirtualMachines; ./install-aca-vm.sh;
```