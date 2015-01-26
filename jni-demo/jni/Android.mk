LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE    := native
LOCAL_SRC_FILES := native.cpp \
	gl_world.cpp \
	
LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -lGLESv1_CM -llog

LOCAL_CFLAGS := -DES_ANDROID\
	-DANDROID_NDK \

include $(BUILD_SHARED_LIBRARY)