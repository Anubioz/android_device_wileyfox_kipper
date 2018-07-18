#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from msm8916-common
$(call inherit-product, device/cyanogen/msm8916-common/msm8916.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Include package config fragments
include $(LOCAL_PATH)/product/*.mk

GAPPS_VARIANT := micro

GAPPS_FORCE_WEBVIEW_OVERRIDES := true
GAPPS_FORCE_MMS_OVERRIDES := true
GAPPS_FORCE_MESSAGING_OVERRIDES := true
GAPPS_FORCE_LATINIME_OVERRIDES := true
GAPPS_FORCE_DIALER_OVERRIDES := true
GAPPS_FORCE_PICTTS_OVERRIDES := true
GAPPS_FORCE_MATCHING_DPI := true
GAPPS_FORCE_PACKAGE_OVERRIDES := true
GAPPS_LOCAL_OVERRIDES_PACKAGES += LatinIME messaging MMS PicoTTS
GAPPS_EXCLUDED_PACKAGES += Hangouts PlusOne Photos GoogleHome GoogleCalendar Velvet CalendarGooglePrebuilt NexusLauncher GoogleTTS
DONT_DEXPREOPT_PREBUILTS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_USERIMAGES_FILE_SYSTEM_TYPE := f2fs
TARGET_USERIMAGES_USE_F2FS := true
TARGET_SYSTEMIMAGE_USE_EXT4 := true
TARGET_SYSTEMIMAGE_USE_F2FS := false
DISABLE_DEXPREOPT := true
WITH_DEXPREOPT := false
USE_EXT4 := true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.fluencetype=fluence \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=true \
    persist.audio.fluence.speaker=true \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.usb.config=mtp,adb

# Call the proprietary setup
$(call inherit-product, vendor/wileyfox/kipper/kipper-vendor.mk)

$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)
