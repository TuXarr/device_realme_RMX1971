echo 'Starting to clone stuffs needed for your device'
echo 'Cloning RMX1971 Vendor tree [1/3]'
# Vendor
rm -rf vendor/realme/RMX1971
if [ ! -d "vendor/realme/RMX1971" ]; then
    mkdir -p vendor/realme/RMX1971
    git clone https://github.com/TuXarr/vendor_realme_RMX1971.git -b main vendor/realme/RMX1971
fi

echo 'Cloning Kernel tree [2/3]'
# Kernel
rm -rf kernel/realme/sdm710
if [ ! -d "kernel/realme/sdm710" ]; then
    mkdir -p kernel/realme/sdm710
    git clone https://github.com/TuXarr/android_kernel_realme_sdm710.git -b 14-r5p kernel/realme/sdm710
fi

echo 'Cloning Proton-Clang [4/3]' 
# Proton-Clang
rm -rf prebuilts/clang/host/linux-x86/r498229b
if [ ! -d "prebuilts/clang/host/linux-x86/r498229b" ]; then 
    mkdir -p prebuilts/clang/host/linux-x86/r498229b 
    git clone https://gitlab.com/itsshashanksp/android_prebuilts_clang_host_linux-x86_clang-r498229b.git -b 13.0 prebuilts/clang/host/linux-x86/r498229b
fi

echo 'Completed, Now proceeding to lunch'
