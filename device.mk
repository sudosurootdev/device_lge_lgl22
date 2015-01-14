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

## overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnCdmaDevice=1 \
        telephony.lteOnGsmDevice=1 \
        gsm.apn.sim.operator.numeric=44050 \
	ro.telephony.default_network=10\
	ro.product.locale.language=ja \
	ro.product.locale.region=JP \
        ril.current.datatech=0 \
        ril.current.ehrpdipv6enable=1 \
        ril.current.vzwfeature=1 \
        ril.subscription.types=NV,RUIM \
        rild.libargs=-d /dev/smd0 \
        rild.libpath=/vendor/lib/libril-qc-qmi-1.so \
        ro.ril.svdo=false \
        ro.ril.svlte1x=false \
        ro.vendor.extension_library=/vendor/lib/libqc-opt.so \
        ril.ecclist.autoprofile=110,118,119 \
        ril.ecclist=110,118,119,911,*911,#911,112

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

PRODUCT_COPY_FILES += device/sample/etc/apns-full-conf.xml:system/etc/apns-conf

COMMON_GLOBAL_CFLAGS += -DCAMERA_WITH_CITYID_PARAM
COMMON_GLOBAL_CFLAGS += -DPROPERTY_PERMS_APPEND='{ "ril.ks.status", AID_SYSTEM, 0 },'
COMMON_GLOBAL_CFLAGS += -DNEEDS_LGE_RIL_SYMBOLS
COMMON_GLOBAL_CFLAGS += -DLGEJPN_UIDS

# NFC packages
PRODUCT_PACKAGES += \
    nfc_nci.bcm2079x.default \
    NfcNci

# GPS configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf

# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf

PRODUCT_COPY_FILES += \
    device/lge/lgl22/rootdir/fstab.g2:root/fstab.g2

$(call inherit-product, device/lge/g2-common/g2.mk)
