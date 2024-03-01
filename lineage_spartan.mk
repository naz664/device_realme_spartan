#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spartan device
$(call inherit-product, device/realme/spartan/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_spartan
PRODUCT_DEVICE := spartan
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3371

# lineage
# WITH_GAPPS := true
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_SUPPORTS_TOUCHGESTURES := true

# Gapps
WITH_GMS := true

# Matrixx Maintainer Info
MATRIXX_MAINTAINER := Nazim
MATRIXX_CHIPSET := SD®870
MATRIXX_BATTERY := 5000mAh
MATRIXX_DISPLAY := 2400x1080

# Device has UDFPS:
TARGET_HAS_UDFPS := true

# Enable extra UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true

# Nuke AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# Nuke Auxio
TARGET_EXCLUDES_AUXIO := true

PRODUCT_SYSTEM_NAME := RMX3371
PRODUCT_SYSTEM_DEVICE := RE54E4L1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3371-user 14 UP1A.230620.001 S.14bef93_5a18-26df2 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3371/RE54E4L1:14/UP1A.230620.001/S.14bef93_5a18-26df2:user/release-keys
