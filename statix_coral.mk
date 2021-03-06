# Inherit some common StatiX stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)

include device/google/coral/coral/device-statix.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_NAME := statix_coral

# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=coral \
    PRIVATE_BUILD_DESC="coral-user 12 SQ1A.220105.002 7961164 release-keys"

BUILD_FINGERPRINT := google/coral/coral:12/SQ1A.220105.002/7961164:user/release-keys

$(call inherit-product, vendor/google/coral/coral-vendor.mk)

# GMS
TARGET_DOES_NOT_USE_GAPPS := false

