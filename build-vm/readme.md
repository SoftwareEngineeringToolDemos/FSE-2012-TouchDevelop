# FSE-2012-TouchDevelop VM build instructions
This readme contains instructions to build a basic Ubuntu Desktop Virtual Machine using Vagrant. 
VM will also contain following software components installed.
1. Git
2. Nodejs
3. npm

# Instructions to build VM
1. Make sure that you have vagrant installed on your machine. You can get it here.
2. Create a directory where VM should be built. Open a command prompt and navigate to it. Let's call it VM directory.
3. Execute command 'vagrant init'. It should prompt that Vagrantfile has been created in this VM directory.
4. Replace Vagrantfile in VM directory by Vagrantfile in this git directory.
5. Copy bootstrap.sh file from this repository to the same VM directory.
6. Execute 'vagrant up' from command prompt in VM directory. This should build the VM.
7. If prompted for Login. Use Username/Password: Vagrant/Vagrant
8. Done
