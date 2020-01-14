LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := gralloc.rpi3
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := gralloc_rpi.cpp

# Added hardware/libhardware/include
LOCAL_C_INCLUDES := \
	external/drm_gralloc \
	external/libdrm \
	external/libdrm/include/drm \
	hardware/libhardware/include \
	system/core/libsystem/include

LOCAL_SHARED_LIBRARIES := \
	libgralloc_drm \
	libcutils \
	liblog

LOCAL_CFLAGS += -Wno-c++11-narrowing

include $(BUILD_SHARED_LIBRARY)
