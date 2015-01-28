#### Developer Virtual Machine

You are required to install the following software on your computer prior to running any commands:

- [git](http://git-scm.com/) - Version control system
- [VirtualBox](https://www.virtualbox.org/) - Create and run a virtual development environment
- [Vagrant](https://www.vagrantup.com/) - Provision a virtual machine
- [Ansible](http://docs.ansible.com/intro_installation.html) - Configure the VM

In order to install the ACA virtual machine, run the following commands in succession
 
``` bash
cd ~/Desktop
mkdir htdocs
sudo ln -s ~/Desktop/htdocs /htdocs
mkdir -p ~/Desktop/htdocs/ACAShop #VM NFS synced folder
git clone git@github.com:AustinCodingAcademy/VirtualMachines.git
cd VirtualMachines
./install-aca-vm.sh
```

Ensure that the following entry is in your ```/etc/hosts``` file
```bash
10.10.10.60     aca.vm
```

#### Usage

SSH into virtual machine
```bash
cd ~/Desktop/VirtualMachines/vms/aca.vm
vagrant ssh
```

MySQL credentials
```bash
username=root
password=root
host=aca.vm
port=3306
```
