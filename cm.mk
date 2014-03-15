## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/lgl22/lgl22.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lgl22
PRODUCT_NAME := cm_lgl22
PRODUCT_BRAND := KDDI
PRODUCT_MODEL := LGL22
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_dcm_jp/g2:4.2.2/JDQ39B/L01F10c.1378316352:user/release-keys PRIVATE_BUILD_DESC="g2_dcm_jp-user 4.2.2 JDQ39B L01F10c.1378316352 release-keys"

PRODUCT_PACKAGES += Torch
