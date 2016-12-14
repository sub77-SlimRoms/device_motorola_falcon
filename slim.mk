# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit common aosp telephony
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device specific
$(call inherit-product, device/motorola/falcon/device_falcon.mk)

# Release name
PRODUCT_RELEASE_NAME := Moto G
PRODUCT_NAME := slim_falcon
PRODUCT_MODEL := falcon
PRODUCT_DEVICE := falcon
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
