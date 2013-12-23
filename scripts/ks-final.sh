###
### Final
###

set -x

### enforce passwords must be inside /etc/shadow
/usr/sbin/pwconv

# root: no login
#/usr/bin/passwd -l root

# sshd
sed -i -e 's/#UseDNS yes/UseDNS no/'  \
       -e 's/#PermitRootLogin yes/PermitRootLogin no/' \
       /etc/ssh/sshd_config

# remove bash_logout
> /etc/skel/.bash_logout
/bin/rm -f /root/.bash_logout


### Avoid clearscreen at console login prompt
/bin/sed -i -e 's/mingetty \$TTY/mingetty --noclear $TTY/' /etc/init/tty.conf

### grub: force verbose boot
/bin/sed -i \
    -e 's/^timeout=5/timeout=1/'       \
    -e 's/^hiddenmenu/#hiddenmenu/'    \
    -e 's/^splashimage/#splashimage/'  \
    -e 's/quiet//'                     \
    -e 's/rhgb//'                      \
    /boot/grub/grub.conf

### Plymouth Splash screen #
#     http://superuser.com/questions/257888/rhel6-disable-the-tiered-progress-bar-during-boot
# /usr/sbin/plymouth-set-default-theme details --rebuild-initrd
#

### /etc/profile
/bin/cat<<EOF >> /etc/profile

export PS1='\u@\H:\w\n\\$ '

EOF

# vim:ft=sh:

