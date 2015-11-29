echo "Updating all software in default box"
yes | sudo apt-get update
echo "Installing git"
yes | sudo apt-get install git
echo "Installing Nodejs"
yes | sudo apt-get install nodejs
echo "Installing npm"
yes | sudo apt-get install npm
echo "Cloning source code from repository : SoftwareEngineeringToolDemos/FSE-2012-TouchDevelop.git"
git clone https://github.com/SoftwareEngineeringToolDemos/FSE-2012-TouchDevelop.git
echo "Changing directory to FSE-2012-TouchDevelop"
cd FSE-2012-TouchDevelop
echo "Installing jake using npm"
sudo npm install jake -g
echo "Installing tsd (TypeScript) using npm"
sudo npm install tsd@next -g
echo "Creating symbolic link for /usr/bin/nodejs called '/usr/bin/node'"
ln -s /usr/bin/nodejs /usr/bin/node
echo "Running TypeScript"
sudo tsd reinstall
echo "Installing all modules"
sudo npm install
echo "building code"
sudo jake
echo "building code in local mode"
sudo jake local &
#Removing unnecessary launchers
sudo rm -f "/usr/share/applications/ubuntu-amazon-default.desktop"
sudo rm -f "/usr/share/applications/libreoffice-calc.desktop"
sudo rm -f "/usr/share/applications/libreoffice-writer.desktop"
sudo rm -f "/usr/share/applications/libreoffice-impress.desktop"
sudo rm -f "/usr/share/applications/ubuntu-software-center.desktop"

echo "Enabling auto login"
sudo  mkdir /etc/lightdm/lightdm.conf.d
sudo  bash -c 'printf "[SeatDefaults]\nautologin-user=Vagrant" > /etc/lightdm/lightdm.conf.d/50-myconfig.conf'

sudo mkdir /home/vagrant/.config/autostart

echo "Downloading required files to desktop and autostart folder"
wget -O "/home/vagrant/Desktop/Installation.txt" https://raw.githubusercontent.com/SoftwareEngineeringToolDemos/FSE-2012-TouchDevelop/master/build-vm/desktop_contents/Installation.txt
wget -O "/home/vagrant/Desktop/License.txt" https://raw.githubusercontent.com/SoftwareEngineeringToolDemos/FSE-2012-TouchDevelop/master/build-vm/desktop_contents/License.txt
wget -O "/home/vagrant/Desktop/Readme.txt" https://raw.githubusercontent.com/SoftwareEngineeringToolDemos/FSE-2012-TouchDevelop/master/build-vm/desktop_contents/Readme.txt
wget -O "/home/vagrant/Desktop/startupScript.sh" https://raw.githubusercontent.com/SoftwareEngineeringToolDemos/FSE-2012-TouchDevelop/master/build-vm/desktop_contents/startupScript.sh
wget -O "/home/vagrant/.config/autostart/startupScript.sh.desktop" https://raw.githubusercontent.com/SoftwareEngineeringToolDemos/FSE-2012-TouchDevelop/master/build-vm/desktop_contents/startupScript.sh.desktop
wget -O "/home/vagrant/Desktop/How to use TouchDevelop in VM - YouTube.desktop" https://raw.githubusercontent.com/SoftwareEngineeringToolDemos/FSE-2012-TouchDevelop/master/build-vm/desktop_contents/How%20to%20use%20TouchDevelop%20in%20VM%20-%20YouTube.desktop
wget -O "/home/vagrant/Desktop/acknowledgements.txt" https://raw.githubusercontent.com/SoftwareEngineeringToolDemos/FSE-2012-TouchDevelop/master/build-vm/desktop_contents/acknowledgements.txt
wget -O "/home/vagrant/Desktop/startupScript.sh.desktop" https://raw.githubusercontent.com/SoftwareEngineeringToolDemos/FSE-2012-TouchDevelop/master/build-vm/desktop_contents/startupScript.sh.desktop

#changing ownerships and permissions to make files executable and make user 'vagrant' the owner
sudo chmod 777 /home/vagrant/Desktop/startupScript.sh
sudo chmod 777 /home/vagrant/.config/autostart/startupScript.sh.desktop

sudo chown -R vagrant "/home/vagrant"
sudo chmod -R a+rwx "/home/vagrant/Desktop"
sudo chmod -R a+rwx "/home/vagrant/FSE-2012-TouchDevelop"

#Restarting vm
sudo reboot 


