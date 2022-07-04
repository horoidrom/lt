#
# Copyright (C) 2021 TeamWin Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

$(call inherit-product, device/lenovo/T7306f/device.mk)

# Inherit from TWRP common configurations
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

# Extra required packages
PRODUCT_PACKAGES += \
    twrpfbe

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := T7306f
PRODUCT_NAME := twrp_T7306f
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := T7306f
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_RELEASE_NAME := T7306f

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=T7306f \
    PRODUCT_NAME=T7306f \
    PRIVATE_BUILD_DESC="full_T7306f-user 11 RP1A.200720.011 1068 release-keys"

BUILD_FINGERPRINT := Lenovo/T7306f:11/RP1A.200720.011/00WW_3_270:user/release-keys

