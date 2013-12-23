###
### dev-tools: to build vagrant additions
###

set -x

### just in case: repo from cdrom
mkdir -p /media/iso
/bin/mount /dev/sr0 /media/iso
/usr/bin/yum repolist all

### gcc et al.
/usr/bin/yum -y install                           \
    make gcc gcc-c++ kernel-devel-`uname -r` perl \
    zlib-devel openssl-devel readline-devel sqlite-devel


### VBox script
#BOX_VERSION=$(cat /home/vagrant/.vbox_version)
#BOX_ISOFILE=VBoxGuestAdditions_${VBOX_VERSION}.iso
VBOX_ISOFILE=VBoxGuestAdditions*.iso

#    mount -o loop $VBOX_ISOFILE /mnt
/bin/mount -o loop $VBOX_ISOFILE /mnt

# run
/bin/sh /mnt/VBoxLinuxAdditions.run


# Disable udev persistent net rules
# We do this so that we do not persist rules mapped to virtual machines
# instances created from this basebox.
/bin/ln -snf /dev/null /etc/udev/rules.d/70-persistent-net.rules

# vim:ft=sh:

