###
### yum groupinfo Base
###

[ "$1" == "-y" ] && force="$1"

# Group: Base
#  Description: The basic installation of CentOS Linux.
#  Mandatory Packages:

/usr/bin/yum $force remove  \
    acl                     \
    at                      \
    attr                    \
    authconfig              \
    bc                      \
    dbus                    \
    lsof                    \
    man                     \
    ntsysv                  \
    tmpwatch                \

#   bind-utils
#   bzip2
#   cronie
#   crontabs
#   cyrus-sasl-plain
#   logrotate
#   psacct
#   traceroute


#  Default Packages:

/usr/bin/yum $force remove    \
    acpid                     \
    dmraid                    \
    dump                      \
    cryptsetup                \
    ipsec-tools               \
    irqbalance                \
    krb5-workstation          \
    ksh                       \
    lvm2                      \
    man-pages                 \
    mdadm                     \
    nano                      \
    nc                        \
    pax                       \
    rsync                     \
    tcp_wrappers              \
    tcpdump                   \
    time                      \
    wget                      \
    yum-utils                 \


#   cronie-anacron
#   dhclient
#   gnupg2
#   libaio
#   m2crypto
#   openssh-clients
#   openssh-server
#   pam_ccreds
#   pam_krb5
#   pam_passwdqc
#   sendmail
#   sudo
#   symlinks
#   unzip
#   util-linux-ng
#   vim-enhanced
#   which
#   words
#   xz
#   zip


#  Optional Packages:

/usr/bin/yum $force remove        \
    aide                          \
    bridge-utils                  \
    device-mapper-multipath       \
    dmraid-events-logwatch        \
    fuse                          \
    fuse-libs                     \
    hardlink                      \
    hesinfo                       \
    keyutils                      \
    logwatch                      \
    nfs4-acl-tools                \
    openswan                      \
    rdist                         \
    squashfs-tools                \
    star                          \
    tcsh                          \
    udftools                      \
    uuidd                         \
    x86info                       \
    yum-updatesd                  \


#   fipscheck                     \
#   gnupg2                        \

