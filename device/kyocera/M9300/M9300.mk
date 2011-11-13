$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
# $(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/kyocera/M9300/M9300-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/kyocera/M9300/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/kyocera/M9300/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/default.prop:root/default.prop \
    $(LOCAL_PATH)/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/init.qcom.sh:root/init.qcom.sh \


#key layouts, names must fit the ones in /proc/bus/input/devices, qwerty.kl is the fallback one.
PRODUCT_COPY_FILES += \
	device/kyocera/M9300/prebuilt/qwerty.kl:system/usr/keylayout/qwerty.kl \
	device/kyocera/M9300/prebuilt/8k_handset.kl:system/usr/keylayout/8k_handset.kl \
	device/kyocera/M9300/prebuilt/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	device/kyocera/M9300/prebuilt/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \

#app
PRODUCT_COPY_FILES += \
	device/kyocera/M9300/prebuilt/app/Root_Explorer.apk:system/app/Root_Explorer.apk \
#	device/kyocera/M9300/prebuilt/app/File_Expert.apk:system/app/File_Expert.apk \
	device/kyocera/M9300/prebuilt/app/TabletModeExtensionLoader.apk:system/app/TabletModeExtensionLoader.apk \

#BootLoader
PRODUCT_COPY_FILES += \
#	device/kyocera/M9300/prebuilt/bootanimation.zip:system/media/bootanimation.zip \

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/kyocera/M9300/vold.fstab:system/etc/vold.fstab
    
PRODUCT_COPY_FILES += \
    device/kyocera/M9300/prebuilt/egl.cfg:system/lib/egl/egl.cfg
 
$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := M9300
PRODUCT_DEVICE := M9300
PRODUCT_MODEL := M9300
MOD_VERSION := SARIDNOUR
PRODUCT_MANUFACTURE := KYOCERA
PRODUCT_LOCALES += mdpi
