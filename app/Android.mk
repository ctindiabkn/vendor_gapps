LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleExtShared
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := GoogleExtShared/GoogleExtShared.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_OVERRIDES_PACKAGES := ExtShared
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)
