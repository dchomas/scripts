#!/bin/bash
#set -x

############################################################################################
##
## Script to install Ubuntu Desktop and XRDP on Azure Ubuntu Server instance
##
############################################################################################

## Copyright (c) 2020 Microsoft Corp. All rights reserved.
## Scripts are not supported under any Microsoft standard support program or service. The scripts are provided AS IS without warranty of any kind.
## Microsoft disclaims all implied warranties including, without limitation, any implied warranties of merchantability or of fitness for a
## particular purpose. The entire risk arising out of the use or performance of the scripts and documentation remains with you. In no event shall
## Microsoft, its authors, or anyone else involved in the creation, production, or delivery of the scripts be liable for any damages whatsoever
## (including, without limitation, damages for loss of business profits, business interruption, loss of business information, or other pecuniary
## loss) arising out of the use of or inability to use the sample scripts or documentation, even if Microsoft has been advised of the possibility
## of such damages.
## Feedback: anders ahl

# Update all existing packages
sudo apt update -y && sudo apt upgrade -y

# Install ubuntu desktop
sudo apt install cinnamon-desktop-environment -y

# Install XRDP
sudo apt install xrdp -y
sudo systemctl enable xrdp
sudo adduser xrdp ssl-cert
echo cinnamon-session-cinnamon2d >~/.xsession
sudo service xrdp restart
