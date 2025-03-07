#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from mha device
$(call inherit-product, device/unknown/mha/device.mk)

PRODUCT_DEVICE := mha
PRODUCT_NAME := omni_mha
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := mha
PRODUCT_MANUFACTURER := unknown

PRODUCT_GMS_CLIENTID_BASE := android-unknown

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="generic_a15-user 9 PPR1.180610.011 eng.root.20190412.211053 test-keys"

BUILD_FINGERPRINT := Huawei/generic_a15/generic_a15:9/PPR1.180610.011/root201904122110:user/release-keys
