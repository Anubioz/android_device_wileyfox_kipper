ifeq ($(WITH_TWRP),true)
TARGET_RECOVERY_DEVICE_DIRS += device/wileyfox/kipper/twrp
TW_INCLUDE_CRYPTO := true
TW_THEME := portrait_hdpi
TW_USE_TOOLBOX := false
TW_EXCLUDE_SUPERSU := false
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_REAL_SDCARD := false
TW_HAS_NO_RECOVERY_PARTITION := false
TW_HAS_NO_BOOT_PARTITION := false
TW_NO_REBOOT_BOOTLOADER := false
TW_NO_REBOOT_RECOVERY := false
TW_NO_BATT_PERCENT := false
TW_NO_CPU_TEMP := false
TW_NEVER_UNMOUNT_SYSTEM := false
TW_NO_USB_STORAGE := false
TW_INCLUDE_INJECTTWRP := false
TW_INCLUDE_BLOBPACK := false
TW_HAS_DOWNLOAD_MODE := true
TW_SDEXT_NO_EXT4 := false
TW_NO_EXFAT_FUSE := false
TW_DEFAULT_LANGUAGE := ru
TW_NO_EXFAT := false
TW_EXCLUDE_ENCRYPTED_BACKUPS := false
TW_EXCLUDE_DEFAULT_USB_INIT := false
TW_INCLUDE_NTFS_3G := false
TW_OEM_BUILD := false
TW_INCLUDE_FB2PNG := true
TWRP_INCLUDE_LOGCAT := true
endif
