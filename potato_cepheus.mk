#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, device/xiaomi/cepheus/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/potato/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := potato_cepheus
PRODUCT_DEVICE := cepheus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 9
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Xiaomi/cepheus_eea/cepheus:9/PKQ1.181121.001/V10.2.15.0.PFAEUXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cepheus-user 9 PKQ1.181121.001 V10.2.15.0.PFAEUXM release-keys" \
    PRODUCT_NAME="cepheus" \
    TARGET_DEVICE="cepheus"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
