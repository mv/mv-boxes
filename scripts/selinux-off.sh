###
### selinux-off.sh
###

set -x

### selinux
/bin/sed -i -e 's/SELINUX=permissive/SELINUX=disabled/' /etc/selinux/config || :
/bin/sed -i -e 's/SELINUX=enforcing/SELINUX=disabled/'  /etc/selinux/config || :
/sbin/chkconfig --level 12345 mcstrans off || :


# vim:ft=sh:

