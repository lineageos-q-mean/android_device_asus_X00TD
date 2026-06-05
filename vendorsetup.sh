#!/bin/bash

export TZ=Asia/Jakarta

rm -rf kernel/asus/sdm660
git clone --single-branch https://github.com/Tiktodz/android_kernel_asus_sdm636 -b clotzy --depth=1 kernel/asus/sdm660

cd kernel/asus/sdm660
curl -LSs "https://raw.githubusercontent.com/Sorayukii/KernelSU-Next/stable/kernel/setup.sh" | bash -s hookless
cd -

# Force Using KSU
rm -rf system/extras/su

rm -rf vendor/lineage-priv/keys
mkdir -p vendor/lineage-priv/keys
git clone https://github.com/electrolaboratory/public-keys vendor/lineage-priv/keys/
