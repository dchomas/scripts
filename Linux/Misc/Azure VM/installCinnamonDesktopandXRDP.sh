############################################################################################
##
## Script to install Ubuntu Desktop and XRDP on Azure Ubuntu Server instance
##
############################################################################################

# Update all existing packages
sudo apt update -y && sudo apt upgrade -y

# Install Cinnamon desktop
sudo apt install cinnamon-desktop-environment -y

# Install XRDP
sudo apt install xrdp -y
sudo systemctl enable xrdp
sudo adduser xrdp ssl-cert
echo cinnamon-session-cinnamon2d >~/.xsession
sudo service xrdp restart
