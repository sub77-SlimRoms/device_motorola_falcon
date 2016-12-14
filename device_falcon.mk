#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/motorola/falcon/overlay
PRODUCT_CHARACTERISTICS := nosdcard

# Audio
PRODUCT_COPY_FILES += \
    device/motorola/falcon/configs/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/motorola/falcon/configs/mixer_paths.xml:system/etc/mixer_paths.xml

# Ramdisk
PRODUCT_PACKAGES += \
		init.target.rc

# Wifi
PRODUCT_COPY_FILES += \
    device/motorola/falcon/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# CDMA APN list
PRODUCT_COPY_FILES += \
    device/motorola/falcon/apns-conf.xml:system/etc/apns-conf.xml \
    device/motorola/falcon/apns-conf-cdma.xml:system/etc/apns-conf-cdma.xml

# Inherit from msm8226-common
$(call inherit-product, device/motorola/msm8226-common/msm8226.mk)
$(call inherit-product, vendor/motorola/falcon/falcon-vendor.mk)
