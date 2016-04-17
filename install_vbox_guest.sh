#!/bin/bash
VIRTUAL_BOX_VERSION=5.0.14
wget http://download.virtualbox.org/virtualbox/$VIRTUAL_BOX_VERSION/VBoxGuestAdditions_$VIRTUAL_BOX_VERSION.iso
sudo mkdir /media/VBoxGuestAdditions
sudo mount -o loop,ro VBoxGuestAdditions_$VIRTUAL_BOX_VERSION.iso /media/VBoxGuestAdditions
sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
rm VBoxGuestAdditions_$VIRTUAL_BOX_VERSION.iso
sudo umount /media/VBoxGuestAdditions
sudo rmdir /media/VBoxGuestAdditions