
packer build \
    -var "datetime=$(date '+%F_%H%M')"  \
    -var "region=sa-east-1"             \
    -var "my_ami=ami-c99130d4"          \
    mvway_amazon-2013.09.2-x86_64.sa-east-1.json


