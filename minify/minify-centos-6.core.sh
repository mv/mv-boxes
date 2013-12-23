###
### yum grouplist Core
###

[ "$1" == "-y" ] && force="$1"

# Group: Core
#  Description: Smallest possible installation.
#  Mandatory Packages:

/usr/bin/yum $force remove  \
   acl                      \
   attr                     \
   audit                    \
   iptables-ipv6            \
   kbd                      \
   selinux-policy           \
   selinux-policy-targeted  \


#  basesystem
#  bash
#  coreutils
#  cpio
#  e2fsprogs                \
#  filesystem
#  glibc
#  initscripts
#  iproute
#  iptables
#  iputils
#  ncurses
#  openssh-server
#  passwd
#  policycoreutils
#  procps
#  rootfiles
#  rpm
#  rsyslog
#  setup
#  shadow-utils
#  sudo
#  util-linux-ng
#  vim-minimal
#  yum


#  Default Packages:

/usr/bin/yum $force remove    \
   aic94xx-firmware           \
   atmel-firmware             \
   b43-openfwwf               \
   bfa-firmware               \
   efibootmgr                 \
   ipw2100-firmware           \
   ipw2200-firmware           \
   ivtv-firmware              \
   iwl100-firmware            \
   iwl1000-firmware           \
   iwl3945-firmware           \
   iwl4965-firmware           \
   iwl5000-firmware           \
   iwl5150-firmware           \
   iwl6000-firmware           \
   iwl6000g2a-firmware        \
   iwl6050-firmware           \
   kernel-firmware            \
   libertas-usb8388-firmware  \
   ql2100-firmware            \
   ql2200-firmware            \
   ql23xx-firmware            \
   ql2400-firmware            \
   ql2500-firmware            \
   rt61pci-firmware           \
   rt73usb-firmware           \
   xorg-x11-drv-ati-firmware  \
   zd1211-firmware            \


#  grub
#  postfix


#  Optional Packages:

/usr/bin/yum $force remove    \
   dracut-fips                \
   dracut-network             \

