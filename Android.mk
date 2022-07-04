LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),T7306f)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
