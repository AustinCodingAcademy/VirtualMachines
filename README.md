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

#### Windows Instructions
Open up your command prompt, by pressing the windows key and typing in ```command```

Once you have the command prompt open type in the following commands
```
cd \
mkdir htdocs
mkdir vm
```

Open up windows explorer, and navigate to the ```c:\``` drive.

In the ```htdocs``` folder, create a file called ```index.php``` with the following contents.
```php
<?php
phpinfo();
```

Similarly, in the htdocs folder, create a file called ```VagrantFile```. Note that this file has no extension, and case matters!

Copy and paste the following code in this ```VagrantFile```
```ruby
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = "aca.vm"
  config.vm.box = "https://s3-us-west-2.amazonaws.com/vagrantvmboxes/aca-generic-lamp-packaged.box"
  config.vm.network "private_network", ip: "10.10.10.60"
  config.vm.synced_folder "c:\\htdocs", "/var/www"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--cpus", "1"]
  end
end
```

Save this file, go back to your command prompt and tpe in the following commands.
```
cd \
cd vm
vagrant up
```

Once everything is complete, visit [http://10.10.10.60](http://10.10.10.60) in your browser.


#### Expected Result
You should see the following output in your terminal (colors may vary)
![Terminal](images/aca-terminal.png "Terminal Output")

You should see the following page in your browser
![Browser](images/aca-phpinfo.png "Browser phpinfo() Output")
