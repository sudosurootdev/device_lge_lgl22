#
# Copyright (C) 2013 The CyanogenMod Project
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
TARGET_RECOVERY_FSTAB := device/lge/lgl22/rootdir/recovery.fstab

include device/lge/g2-common/BoardConfigCommon.mk

TARGET_RECOVERY_FSTAB := device/lge/lgl22/rootdir/recovery.fstab

TARGET_KERNEL_CONFIG := lgl22_defconfig
#
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=g2 user_debug=31 msm_rtb.filter=0x0  androidboot.selinux=permissive

TARGET_OTA_ASSERT_DEVICE := lgl22,l22,g2,galbi

G2_DTS_TARGET := msm8974-g2-kddi

BOARD_RECOVERY_SWIPE := true

