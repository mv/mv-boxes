#!/bin/bash
#
# vmware-new-linux-server.sh
#     VMWare Fusion: new linux server
#
# 2013/12
# Marcus Vinicius Ferreira               ferreira.mv[ at ]gmail.com
#

[ -z "$1" ] && {
    echo
    echo "Usage: $0 <machine_name>"
    echo
    exit 2
}

dvd="/pub/iso/centos63/CentOS-6.3-x86_64-bin-DVD1.iso"
dvd="/pub/iso/centos64/CentOS-6.4-x86_64-bin-DVD1.iso"
dvd="/pub/iso/centos65/CentOS-6.5-x86_64-bin-DVD1.iso"

machine_dir="/VMachine"
machine_name="$1"
machine_name="${machine_name:?'Cannot be null'}"

machine_path="${machine_dir}/${machine_name}.vmwarevm"

# Seed reference
ref="linux-64-bits"
ref_dir="${machine_dir}/${ref}.vmwarevm"
ref_path="${ref_dir}/${ref}.vmx"

#
# New Machine
#
[ -d "${machine_dir}/${machine_name}.vmwarevm" ] && {

    echo
    echo "Destination already exists. Aborting."
    echo
    exit 2
}

cp -r "${ref_dir}" "${machine_dir}/${machine_name}.vmwarevm"

# rename
for f in vmx vmxf plist vmsd
do

  [ -f ${machine_path}/${ref}.${f} ] &&  \
  /bin/mv ${machine_path}/${ref}.${f}       \
          ${machine_path}/${machine_name}.${f}

done

# change content
for f in ${machine_path}/${machine_name}.* ${machine_path}/*.plist
do

  [ -s ${f} ] && \
  perl -pi -e "s/${ref}/${machine_name}/g" ${f}

done

# change iso
perl -pi -e "s|(ide1\:0\.fileName =) .*|\$1 \"$dvd\"|" \
     "${machine_path}/${machine_name}.vmx"

# register machine by starting it.
vmrun -T fusion start "${machine_path}/${machine_name}.vmx"


# vim:ft=sh:

