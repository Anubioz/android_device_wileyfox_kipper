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

include device/cyanogen/msm8916-common/BoardConfigCommon.mk

include device/wileyfox/kipper/board/*.mk

DEVICE_PATH := device/wileyfox/kipper

TARGET_BOARD_INFO_FILE := device/wileyfox/kipper/board-info.txt

WITH_TWRP := true

BOARD_KERNEL_CMDLINE +=  earlyprintk androidboot.selinux=permissive

TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Inherit from proprietary files
include vendor/wileyfox/kipper/BoardConfigVendor.mk
