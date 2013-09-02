LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_PACKAGE_NAME := lewa-res
LOCAL_CERTIFICATE := platform

LOCAL_AAPT_FLAGS := -x 9

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_PATH := $(TARGET_OUT_JAVA_LIBRARIES)

LOCAL_EXPORT_PACKAGE_RESOURCES := true

LOCAL_NO_LEWARES := true

LOCAL_NO_MTKRES := true

include $(BUILD_PACKAGE)

# define a global intermediate target that other module may depend on.
.PHONY: lewa-res-package-target
lewa-res-package-target: $(LOCAL_BUILT_MODULE)
