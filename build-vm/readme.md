# FSE-2012-TouchDevelop VM build instructions
This readme contains instructions to build a basic Ubuntu Desktop Virtual Machine for TouchDevelop tool. 

# Instructions to build VM
1. Make sure that you have vagrant installed on your machine. You can get it [here.](https://www.vagrantup.com/downloads.html) <br>
2. Create a directory where VM should be built. Open a command prompt and navigate to it. Let's call it VM directory. <br>
3. Execute command 'vagrant init'. It should prompt that Vagrantfile has been created in this VM directory.<br>
4. Replace Vagrantfile in VM directory by Vagrantfile in this git directory.<br>
5. Copy bootstrap.sh file from this repository to the same VM directory.<br>
6. Execute 'vagrant up' from command prompt in VM directory. This should build the VM.<br>
7. If prompted for Login, Use Username/Password: vagrant/vagrant <br>
8. Done 

#References
1. http://askubuntu.com/questions/159008/how-to-add-startup-applications-in-lubuntu
2. https://help.ubuntu.com/community/AutoLogin
3. http://aruizca.com/steps-to-create-a-vagrant-base-box-with-ubuntu-14-04-desktop-gui-and-virtualbox/
4. http://askubuntu.com/questions/230358/problems-creating-a-desktop-entry-for-a-shell-script
5. https://github.com/Microsoft/TouchDevelop/blob/master/README.md#setup
6. https://github.com/SoftwareEngineeringToolDemos/ICSE-2012-CodeBubbles/edit/master/build-vm/
