LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),marino_f)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
