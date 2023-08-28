#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from cheetah device
$(call inherit-product, device/google/cheetah/device.mk)

PRODUCT_DEVICE := cheetah
PRODUCT_NAME := lineage_cheetah
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah_beta-user 14 UPB5.230623.006 10698132 release-keys"

BUILD_FINGERPRINT := google/cheetah_beta/cheetah:14/UPB5.230623.006/10698132:user/release-keys
