echo 'Starting to clone stuffs needed for your device'
echo 'Cloning RMX1971 Vendor tree [1/4]'
# Vendor
rm -rf vendor/realme/RMX1971
if [ ! -d "vendor/realme/RMX1971" ]; then
    mkdir -p vendor/realme/RMX1971
    git clone https://gitlab.com/kaderbava/vendor_realme_RMX1971 -b 14 vendor/realme/RMX1971
fi

echo 'Cloning Kernel tree [2/4]'
# Kernel
rm -rf kernel/realme/sdm710
if [ ! -d "kernel/realme/sdm710" ]; then
    mkdir -p kernel/realme/sdm710
    git clone https://github.com/kaderbava/android_kernel_realme_sdm710.git -b 14-r5p kernel/realme/sdm710
fi

echo 'Cloning Mediatek SEpolicy_vndr [3/4]'
# SEpolicy
rm -rf device/qcom/sepolicy_vndr
if [ ! -d "device/qcom/sepolicy_vndr" ]; then
    mkdir -p device/qcom/sepolicy_vndr
    git clone https://github.com/LineageOS/android_device_qcom_sepolicy_vndr.git -b lineage-21 device/qcom/sepolicy_vndr
fi

echo 'Cloning AOSP Clang 17.0.4 [4/4]' 
# AOSP Clang 17.0.4 
rm -rf prebuilts/clang/host/linux-x86/r498229b 
if [ ! -d "prebuilts/clang/host/linux-x86/r498229b" ]; then 
    mkdir -p prebuilts/clang/host/linux-x86/r498229b 
    git clone https://gitlab.com/itsshashanksp/android_prebuilts_clang_host_linux-x86_clang-r498229b.git -b 13.0 prebuilts/clang/host/linux-x86/r498229b
fi

echo 'Completed, Now proceeding to lunch'
