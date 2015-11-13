# FSE-2012-TouchDevelop VM build instructions
This readme contains instructions to build a basic Ubuntu Desktop Virtual Machine using Vagrant. 
VM will also contain following software components installed. <br>
1. Git <br>
2. Nodejs <br>
3. npm <br>

# Instructions to build VM
1. Make sure that you have vagrant installed on your machine. You can get it [here.](https://www.vagrantup.com/downloads.html) <br>
2. Create a directory where VM should be built. Open a command prompt and navigate to it. Let's call it VM directory. <br>
3. Execute command 'vagrant init'. It should prompt that Vagrantfile has been created in this VM directory.<br>
4. Replace Vagrantfile in VM directory by Vagrantfile in this git directory.<br>
5. Copy bootstrap.sh file from this repository to the same VM directory.<br>
6. Execute 'vagrant up' from command prompt in VM directory. This should build the VM.<br>
7. If prompted for Login, Use Username/Password: vagrant/vagrant <br>
8. Done 
