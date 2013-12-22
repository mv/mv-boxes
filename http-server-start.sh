#!/bin/bash
#
# vbox-linux-server.sh
#     VirtualBox: new linux server
#
# 2013/12
# Marcus Vinicius Ferreira               ferreira.mv[ at ]gmail.com
#

[ -z "$1" ] && {
    echo
    echo "Usage: $0 [port]"
    echo
    echo "    Start a simple http server in http://localhost:${port}/"
    echo "    Default port: 8000"
    echo
    exit 2
}

port=${1:=8000}

# Ref:
#     http://www.commandlinefu.com/commands/view/71/serve-current-directory-tree-at-httphostname8000
#
python -m SimpleHTTPServer ${port}

# vim:ft=sh:

