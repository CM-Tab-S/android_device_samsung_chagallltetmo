#
# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/chagallltetmo

# Platform
BOARD_VENDOR := samsung
TARGET_SOC := exynos5420

# RIL
BOARD_PROVIDES_LIBRIL := true
# hardware/samsung/ril
BOARD_MODEM_TYPE := xmm7260
# RIL.java overwrite
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril
BOARD_MODEM_NEEDS_VIDEO_CALL_FIELD := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Bootloader
TARGET_OTA_ASSERT_DEVICE := chagalllte

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/chagallltetmo/releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/samsung/chagalllte/releasetools/ota_from_target_files
TARGET_BOARD_INFO_FILE ?= device/samsung/chagallltetmo/board-info.txt

# Kernel
TARGET_KERNEL_CONFIG := lineageos_deathly_chagallltetmo_defconfig
BOARD_CUSTOM_BOOTIMG := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Cyanogen Hardware
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw

# Partitions
# /proc/partitions * 2 * BLOCK_SIZE (512) = size in bytes
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3808428032
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11249123328
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096

# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/exynos5420-common/sepolicy
BOARD_SEPOLICY_DIRS += device/samsung/chagalllte/sepolicy

# Cyanogen Hardware
BOARD_HARDWARE_CLASS := $(COMMON_PATH)/cmhw

# Audio
TARGET_AUDIOHAL_VARIANT := samsung

# Inherit from exynos5420-common
include device/samsung/exynos5420-common/BoardConfigCommon.mk
