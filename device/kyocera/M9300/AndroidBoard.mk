LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the non-open-source counterpart to this file
-include vendor/kyocera/M9300/AndroidBoardVendor.mk

# the system properties for each device, loaded by init
file := $(TARGET_OUT)/build.prop
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/build.M9300.prop | $(ACP)
	$(transform-prebuilt-to-target)
