#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ROO device
$(call inherit-product, device/hmd/ROO/device.mk)

PRODUCT_DEVICE := ROO
PRODUCT_NAME := omni_ROO
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := ROO
PRODUCT_MANUFACTURER := hmd

PRODUCT_GMS_CLIENTID_BASE := android-hmd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Rooster_00WW-user 10 QP1A.190711.020 00WW_3_16B release-keys"

BUILD_FINGERPRINT := Nokia/Rooster_00WW/ROO_sprout:10/QP1A.190711.020/00WW_3_16B:user/release-keys
