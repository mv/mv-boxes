#!/bin/bash
#
# Remove MOST, via brute force
#
# Marcus Vinicius Ferreira          ferreira.mv[ at ]gmail.com
# 2013-12
#

usage() {
  echo
  echo "Usage $0 [-v|-f]"
  echo
  echo "  Remove MOST rpm packages from the system."
  echo
  echo "    -f: force: do it."
  echo "    -v: verbose"
  echo
  exit 1
}

remove_once() {
  rpm -qa | sort | egrep -v '^dracut|^device|^dhc|^openssh|^net-tools|^rootfiles|^kernel-2|^kernel-3|^setup|^yum-3|^yum-4' | \
  while read f
  do
    if rpm -e ${f} 2>/dev/null
    then echo "Removed [$f]"
    else [ $verbose ] && echo "        [$f]"
    fi
  done
}

###
while [ "$1" ]
do
  case "$1" in
    "-f") force="1"
          ;;
    "-v") verbose="1"
          ;;
      *) usage
          ;;
  esac
  shift
done

[ -z "${force}" ] && usage

### Main
while true
do

  kount_pre=$( rpm -qa | wc -l )
  echo
  echo "Pre: ${kount_pre}"

  remove_once

  kount_pos=$( rpm -qa | wc -l )
  echo "Pos: ${kount_pos}"
  echo

  [ "${kount_pre}" == "${kount_pos}" ] && break

done

echo "Kept ${kount_pos} packages."
echo

# vim:ft=sh:

