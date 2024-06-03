echo 'Starting to clone stuffs needed for your device'
echo 'Cloning RMX1971 Vendor tree [1/3]'
# Vendor
rm -rf vendor/realme/RMX1971
if [ ! -d "vendor/realme/RMX1971" ]; then
    mkdir -p vendor/realme/RMX1971
    git clone https://gitlab.com/kaderbava/vendor_realme_RMX1971 -b 14 vendor/realme/RMX1971
fi

echo 'Cloning Kernel tree [2/3]'
# Kernel
rm -rf kernel/realme/sdm710
if [ ! -d "kernel/realme/sdm710" ]; then
    mkdir -p kernel/realme/sdm710
    git clone https://github.com/kaderbava/android_kernel_realme_sdm710.git -b 14-r5p kernel/realme/sdm710
fi

echo 'Cloning Proton-Clang [4/3]' 
# Proton-Clang
rm -rf prebuilts/clang/host/linux-x86/proton
if [ ! -d "prebuilts/clang/host/linux-x86/proton" ]; then 
    mkdir -p prebuilts/clang/host/linux-x86/r498229b 
    git clone https://github.com/kdrag0n/proton-clang.git -b master prebuilts/clang/host/linux-x86/proton
fi

echo 'Completed, Now proceeding to lunch'
