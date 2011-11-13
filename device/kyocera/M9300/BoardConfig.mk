USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/kyocera/M9300/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := qsd8k
TARGET_CPU_ABI := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom
TARGET_BOOTLOADER_BOARD_NAME := M9300

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=ttyDCC0 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x20000000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000

# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

# Graphics
BOARD_EGL_CFG := device/kyocera/M9300/prebuilt/egl.cfg
BOARD_HAS_LIMITED_EGL := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

# USB mass storage
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

TARGET_PREBUILT_KERNEL := device/kyocera/M9300/kernel

# Recovery 
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/kyocera/M9300/recovery/recovery_ui.c

BOARD_HAS_NO_SELECT_BUTTON := true

# TARGET_RELEASETOOLS_EXTENSIONS := device/kyocera/common

# Below is a sample of how you can tweak the mount points using the board config.
# This is for the Samsung Galaxy S.
# Feel free to tweak or remove this code.
# If you want to add/tweak a mount point, the BOARD_X_FILESYSTEM_OPTIONS are optional.
BOARD_CACHE_DEVICE := /dev/block/mtdblock2 
BOARD_CACHE_FILESYSTEM := auto
BOARD_CACHE_FILESYSTEM_OPTIONS := rw,nosuid,nodev,relatime 0 0
