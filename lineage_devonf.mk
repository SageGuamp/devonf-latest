#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from devonf device
$(call inherit-product, device/motorola/devonf/device.mk)

PRODUCT_DEVICE := devonf
PRODUCT_NAME := lineage_devonf
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g73 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="devonf_g_sys-user 13 T1TNS33M.14-90-9-5 2d2b83 release-keys"

BUILD_FINGERPRINT := motorola/devonf_g_sys/devonf:13/T1TNS33M.14-90-9-5/2d2b83:user/release-keys
