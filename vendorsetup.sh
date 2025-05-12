#!/bin/bash

export TZ=Asia/Jakarta

rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Kneba/kernel_asus_sdm660 -b clo-ksun kernel/asus/sdm660

# Force Using KSU
rm -rf system/extras/su

rm -rf vendor/lineage-priv/keys
mkdir -p vendor/lineage-priv/keys
git clone https://github.com/electrolaboratory/public-keys vendor/lineage-priv/keys/
