#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product-if-exists, vendor/lge/lgl22/lgl22-vendor.mk)

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# RIL 
COMMON_GLOBAL_CFLAGS += -DNEEDS_LGE_RIL_SYMBOLS

# Felica
COMMON_GLOBAL_CFLAGS += -DLGEJPN_UIDS

# GPS configuration
PRODUCT_COPY_FILES += \
    device/lge/lgl22/gps.conf:system/etc/gps.conf

# NFC packages
PRODUCT_PACKAGES += \
    nfc_nci.g2 \
    NfcNci

# root dir
PRODUCT_COPY_FILES += \
    device/lge/lgl22/rootdir/fstab.g2:root/fstab.g2 \
    device/lge/lgl22/rootdir/init.g2_product.rc:root/init.g2_product.rc \
    device/lge/lgl22/rootdir/init.g2.rc:root/init.g2.rc 


## overlays
DEVICE_PACKAGE_OVERLAYS += device/lge/lgl22/overlay

# Default Locale
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.locale.language=ja \
    ro.product.locale.region=JP

# inherit (this must be after PRODUCT_COPY_FILES section)
$(call inherit-product, device/lge/g2-common/g2.mk)



