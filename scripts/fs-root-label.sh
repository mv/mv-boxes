###
### root-label
###

set -x

### fix: labeling root, because grub.conf and /etc/fstab
/sbin/e2label /dev/sda1 root

/bin/cat<<FSTAB > /etc/fstab
LABEL=root  /         ext4    defaults,noatime,nodiratime  1  1
tmpfs       /dev/shm  tmpfs   defaults                     0  0
devpts      /dev/pts  devpts  gid=5,mode=620               0  0
sysfs       /sys      sysfs   defaults                     0  0
proc        /proc     proc    defaults                     0  0

FSTAB

# vim:ft=sh:

