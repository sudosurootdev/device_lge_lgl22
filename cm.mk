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

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=KDDI/g2_jp_kdi/g2:4.2.2/JDQ39B/LGL2210a.1382995032:user/release-keys PRIVATE_BUILD_DESC="g2_jp_kdi-user 4.2.2 JDQ39B LGL2210a.1382995032 release-keys"

PRODUCT_PACKAGES += Torch
