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

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

PRODUCT_DEVICE := garnet
PRODUCT_NAME := lineage_garnet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := xiaomi for arm64
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="garnet-user 13 SKQ1.230401.001 V14.0.13.0.TNRCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/garnet/garnet:13/SKQ1.230401.001/V14.0.13.0.TNRCNXM:user/release-keys
