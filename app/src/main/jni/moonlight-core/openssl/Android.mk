LOCAL_PATH:= $(call my-dir)
 
include $(CLEAR_VARS)
LOCAL_MODULE:= libssl
LOCAL_SRC_FILES:= $(TARGET_ARCH_ABI)/libssl.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_LDFLAGS += -Wl,-z,max-page-size=16384,--exclude-libs,ALL
include $(PREBUILT_STATIC_LIBRARY)
 
include $(CLEAR_VARS)
LOCAL_MODULE:= libcrypto
LOCAL_SRC_FILES:= $(TARGET_ARCH_ABI)/libcrypto.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_LDFLAGS += -Wl,-z,max-page-size=16384,--exclude-libs,ALL
include $(PREBUILT_STATIC_LIBRARY)
