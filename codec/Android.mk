ifeq (,$(wildcard vendor/amlogic/frameworks/av/AmFFmpegAdapter))
LOCAL_PATH := $(call my-dir)

PATH_32 := $(TARGET_OUT_VENDOR)/lib/
PATH_64 := $(TARGET_OUT_VENDOR)/lib64/

include $(CLEAR_VARS)

LOCAL_MODULE := libstagefright_soft_amsoftdec
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX :=.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(PATH_32)
LOCAL_MODULE_PATH_64 := $(PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)

include $(BUILD_PREBUILT)
endif
