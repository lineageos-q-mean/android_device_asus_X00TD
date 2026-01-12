#!/bin/bash

export TZ=Asia/Jakarta

rm -rf kernel/asus/sdm660
git clone --single-branch --recursive https://github.com/strongreasons/android_kernel_asus_sdm660 -b folk kernel/asus/sdm660
#cd kernel/asus/sdm660
#git revert 079a547168e74a57b7431652554eddef0e901a59 --no-edit
#cd ../../..

# Force Using KSU
rm -rf system/extras/su

rm -rf vendor/lineage-priv/keys
mkdir -p vendor/lineage-priv/keys
git clone https://github.com/electrolaboratory/public-keys vendor/lineage-priv/keys/
