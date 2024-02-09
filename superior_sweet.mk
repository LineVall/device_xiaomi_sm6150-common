#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common SuperiorOS stuff.
MAINTAINER := unsatifsed27
USE_QUICKPIC := true
USE_DUCKDUCKGO := true
USE_MOTO_CALCULATOR := true
$(call inherit-product, vendor/superior/config/common.mk)

PRODUCT_NAME := superior_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Blur
TARGET_ENABLE_BLUR := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Pixel Stuff
TARGET_INCLUDE_PIXEL_CHARGER := true

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true
