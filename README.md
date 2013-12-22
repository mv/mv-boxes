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


### VMWare Fusion

1. Create a new empty machine

    ./vbox-new-linux-server.sh "my-new-machine"


2. Boot my new machine

    # on the prompt menu
    [Tab]
    vmlinuz initrd=initrd.img text ks=http://10.0.3.1:8000/ks/ks6-core.cfg


The host server ip address will vary between VMWare Fusion installations. To
find out your current NAT configuration:

    $ ifconfig vmnet8
    vmnet8: flags=8863<UP,BROADCAST,SMART,RUNNING,SIMPLEX,MULTICAST> mtu 1500
    	ether 00:50:56:c0:00:08
    	inet 10.0.3.1 netmask 0xffffff00 broadcast 10.0.3.255


To change you local network settings:

    http://kb.vmware.com/selfservice/microsites/search.do?language=en_US&cmd=displayKC&externalId=1026510




## using VeeWee




## using Packer




