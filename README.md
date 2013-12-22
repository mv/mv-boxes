mv-boxes: Building Linux Boxes
------------------------------


My scripts to build/update truly minimal Linux boxes.



## by hand


### VirtualBox


1. Create a new empty machine

    ./vbox-new-linux-server.sh "my-new-machine"


2. Boot my new machine

    # on the prompt menu
    [Tab]
    vmlinuz initrd=initrd.img text


This is enough to make a new manual installation. To use a defined
kickstart file:

    # start a local http server
    ./http-server-start.sh 8000

    # on the prompt menu
    [Tab]
    vmlinuz initrd=initrd.img text ks=http://10.0.2.2:8000/ks/ks6-core.cfg




## using VeeWee




## using Packer




