#!/bin/bash
#
# vbox-linux-server.sh
#     VirtualBox: new linux server
#
# 2013/12
# Marcus Vinicius Ferreira               ferreira.mv[ at ]gmail.com
#

usage() {
    echo
    echo "Usage: $0 [port]"
    echo
    echo "    Start a simple http server in http://localhost:${port}/"
    echo "    Default port: 8000"
    echo
    exit 2
}

port="$1"
port=${port:=8000}

echo
echo "Using port: ${port}"
echo

# Ref:
#     http://www.commandlinefu.com/commands/view/71/serve-current-directory-tree-at-httphostname8000
#
python -m SimpleHTTPServer ${port} || usage

# vim:ft=sh:

