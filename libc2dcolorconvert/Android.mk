LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
        C2DColorConverter.cpp

LOCAL_C_INCLUDES := \
    $(TOP)/frameworks/av/include/media/stagefright \
    $(TOP)/frameworks/native/include/media/openmax \
    $(TOP)/hardware/qcom/display-caf-msm8974/libcopybit \
    $(TARGET_OUT_HEADERS)/qcom/display/

LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include

LOCAL_SHARED_LIBRARIES := libutils liblog libdl

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE := libc2dcolorconvert

LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_VENDOR_MODULE := true

include $(BUILD_SHARED_LIBRARY)
