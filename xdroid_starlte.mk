#
# Copyright (C) 2021 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit from starlte device
$(call inherit-product, device/samsung/starlte/device.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

## Inherit some common xdroidOSS stuff
$(call inherit-product, vendor/xdroid/config/common.mk)

# xdroid build flags

#XDROID_BOOT := 1080 Disabled due to bootloop in starlte.
XDROID_MAINTAINER := thenist

## Device identifier, this must come after all inclusions
PRODUCT_NAME := xdroid_starlte
PRODUCT_DEVICE := starlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G960F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung
