###
### yum grouplist Base
###

[ "$1" == "-y" ] && force="$1"

# Group: Base
#  Description: The basic installation of CentOS Linux.
#  Mandatory Packages:

/usr/bin/yum $force remove  \
   alsa-utils               \
   at                       \
   authconfig               \
   bc                       \
   bind-utils               \
   centos-indexhtml         \
   dbus                     \
   ed                       \
   lsof                     \
   man                      \
   ntsysv                   \
   parted                   \
   pciutils                 \
   psacct                   \
   quota                    \
   setserial                \
   tmpwatch                 \
   traceroute               \

#  crontabs                 \
#  cyrus-sasl-plain         \
#  file                     \
#  logrotate                \


#  Default Packages:

/usr/bin/yum $force remove    \
   abrt-addon-ccpp            \
   abrt-addon-kerneloops      \
   abrt-addon-python          \
   abrt-cli                   \
   acpid                      \
   b43-fwcutter               \
   blktrace                   \
   bridge-utils               \
   cpuspeed                   \
   cryptsetup-luks            \
   dmraid                     \
   dosfstools                 \
   eject                      \
   fprintd-pam                \
   hunspell                   \
   hunspell-en                \
   irqbalance                 \
   kexec-tools                \
   ledmon                     \
   lvm2                       \
   man-pages                  \
   man-pages-overrides        \
   mdadm                      \
   microcode_ctl              \
   mlocate                    \
   mtr                        \
   nano                       \
   ntp                        \
   ntpdate                    \
   pam_passwdqc               \
   pcmciautils                \
   pinfo                      \
   pm-utils                   \
   rdate                      \
   rfkill                     \
   rsync                      \
   scl-utils                  \
   setuptool                  \
   smartmontools              \
   sos                        \
   strace                     \
   sysstat                    \
   system-config-firewall-tui \
   system-config-network-tui  \
   systemtap-runtime          \
   tcpdump                    \
   tcsh                       \
   usbutils                   \
   vconfig                    \
   virt-what                  \
   wget                       \
   wireless-tools             \
   yum-plugin-security        \
   yum-utils                  \


#  biosdevname                \
#  bzip2                      \
#  ethtool                    \
#  gnupg2                     \
#  libaio                     \
#  openssh-clients            \
#  plymouth                   \
#  prelink                    \
#  readahead                  \
#  rng-tools                  \
#  time                       \
#  which                      \
#  vim-enhanced               \
#  words                      \
#  xz                         \
#  unzip                      \
#  zip                        \

#  Optional Packages:

/usr/bin/yum $force remove        \
   PyPAM                          \
   audispd-plugins                \
   brltty                         \
   cpupowerutils                  \
   device-mapper-persistent-data  \
   dos2unix                       \
   dumpet                         \
   ecryptfs-utils                 \
   edac-utils                     \
   genisoimage                    \
   gpm                            \
   kabi-yum-plugins               \
   kernel-doc                     \
   linuxptp                       \
   logwatch                       \
   mkbootdisk                     \
   mtools                         \
   ncurses-term                   \
   nss_db                         \
   oddjob                         \
   pax                            \
   python-dmidecode               \
   python-volume_key              \
   rsyslog-gnutls                 \
   rsyslog-gssapi                 \
   rsyslog-relp                   \
   sgpio                          \
   sox                            \
   squashfs-tools                 \
   star                           \
   tboot                          \
   tunctl                         \
   udftools                       \
   unix2dos                       \
   uuidd                          \
   volume_key                     \
   wodim                          \
   x86info                        \
   yum-plugin-aliases             \
   yum-plugin-changelog           \
   yum-plugin-downloadonly        \
   yum-plugin-tmprepo             \
   yum-plugin-verify              \
   yum-plugin-versionlock         \
   yum-presto                     \
   zsh                            \


