# Boot animation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit common aosp telephony
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device specific
$(call inherit-product, device/lge/w7/device_w7.mk)

# Release name
PRODUCT_RELEASE_NAME := LG L90
PRODUCT_NAME := slim_w7
PRODUCT_MODEL := w7
PRODUCT_DEVICE := w7
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := lge
