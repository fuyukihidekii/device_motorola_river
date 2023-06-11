#
# Copyright (C) 2019 The LineageOS Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common banana stuff
$(call inherit-product, vendor/banana/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080

BANANA_BUILD_TYPE := CORE
# TARGET_ENABLE_BLUR := true

TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_EXCLUDE_MATLOG := true
TARGER_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_QUICK_TAP := true
# TARGET_USES_BLUR := true

WITH_GAPPS := true
BUILD_CORE_GAPPS := true
BUILD_CORE_GAPPS_EXTRA := true

# Inherit from river device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := river
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := banana_river
PRODUCT_MODEL := moto g(7)

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=river \
        PRIVATE_BUILD_DESC="river_retail-user 10 QPUS30.52-33-11 df129 release-keys"
