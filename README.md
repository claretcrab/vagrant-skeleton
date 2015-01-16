# vagrant-skeleton to create a LAMP virtual server

## Install vagrant
https://docs.vagrantup.com/v2/installation/index.html

## Install VirtualBox
https://www.virtualbox.org/wiki/Downloads

## Run
Open the terminal and execute these commands
```
git checkout https://github.com/claretcrab/vagrant-skeleton.git
cd vagrant-skeleton
vagrant box add hashicorp/precise32
vagrant up
```
By default your web server can be accessed in http://127.0.0.1:8080
Then you can access to the virtual machine with
```
vagrant ssh
```
To close the virtual machine you can execute
```
vagrant halt
```
Or destroy it with
```
vagrant destroy
```
Enjoy!
