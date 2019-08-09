LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := Lawnchair
LOCAL_SRC_FILES := priv-app/Lawnchair/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Home Launcher2 Launcher3 Launcher3QuickStep PixelLauncher
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)
