LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=       \
	stagefright.cpp \
	jpeg.cpp	\
	SineSource.cpp

LOCAL_SHARED_LIBRARIES := \
	libstagefright libmedia libutils libbinder libstagefright_foundation \
	libjpeg libgui libcutils liblog

LOCAL_C_INCLUDES:= \
	frameworks/av/media/libstagefright \
	frameworks/av/media/libstagefright/include \
	$(TOP)/frameworks/native/include/media/openmax \
	external/jpeg \

LOCAL_CFLAGS += -Wno-multichar -Werror -Wall
LOCAL_CLANG := true

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE:= stagefright

include $(BUILD_EXECUTABLE)

################################################################################

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=         \
	SineSource.cpp    \
	record.cpp

LOCAL_SHARED_LIBRARIES := \
	libstagefright libmedia liblog libutils libbinder libstagefright_foundation

LOCAL_C_INCLUDES:= \
	frameworks/av/media/libstagefright \
	$(TOP)/frameworks/native/include/media/openmax

ifneq ($(TARGET_HAS_LEGACY_CAMERA_HAL1), true)
LOCAL_C_INCLUDES += \
	$(TOP)/frameworks/native/include/media/hardware
endif

LOCAL_CFLAGS += -Wno-multichar -Werror -Wall
LOCAL_CLANG := true

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE:= record

include $(BUILD_EXECUTABLE)

################################################################################

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=         \
	SineSource.cpp    \
	recordvideo.cpp

LOCAL_SHARED_LIBRARIES := \
	libstagefright libmedia liblog libutils libbinder libstagefright_foundation

LOCAL_C_INCLUDES:= \
	frameworks/av/media/libstagefright \
	$(TOP)/frameworks/native/include/media/openmax

ifneq ($(TARGET_HAS_LEGACY_CAMERA_HAL1), true)
LOCAL_C_INCLUDES += \
	$(TOP)/frameworks/native/include/media/hardware
endif

LOCAL_CFLAGS += -Wno-multichar -Werror -Wall
LOCAL_CLANG := true

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE:= recordvideo

include $(BUILD_EXECUTABLE)


################################################################################

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=         \
	SineSource.cpp    \
	audioloop.cpp

LOCAL_SHARED_LIBRARIES := \
	libstagefright libmedia liblog libutils libbinder libstagefright_foundation

LOCAL_C_INCLUDES:= \
	frameworks/av/media/libstagefright \
	$(TOP)/frameworks/native/include/media/openmax

LOCAL_CFLAGS += -Wno-multichar -Werror -Wall
LOCAL_CLANG := true

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE:= audioloop

include $(BUILD_EXECUTABLE)

################################################################################

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=         \
        stream.cpp    \

LOCAL_SHARED_LIBRARIES := \
	libstagefright liblog libutils libbinder libgui \
	libstagefright_foundation libmedia libcutils

LOCAL_C_INCLUDES:= \
	frameworks/av/media/libstagefright \
	$(TOP)/frameworks/native/include/media/openmax

LOCAL_CFLAGS += -Wno-multichar -Werror -Wall
LOCAL_CLANG := true

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE:= stream

include $(BUILD_EXECUTABLE)

################################################################################

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=         \
	sf2.cpp    \

LOCAL_SHARED_LIBRARIES := \
	libstagefright liblog libutils libbinder libstagefright_foundation \
	libmedia libgui libcutils libui

LOCAL_C_INCLUDES:= \
	frameworks/av/media/libstagefright \
	$(TOP)/frameworks/native/include/media/openmax

LOCAL_CFLAGS += -Wno-multichar -Werror -Wall
LOCAL_CLANG := true

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE:= sf2

include $(BUILD_EXECUTABLE)

################################################################################

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=               \
	codec.cpp               \
	SimplePlayer.cpp        \

LOCAL_SHARED_LIBRARIES := \
	libstagefright liblog libutils libbinder libstagefright_foundation \
	libmedia libgui libcutils libui

LOCAL_C_INCLUDES:= \
	frameworks/av/media/libstagefright \
	$(TOP)/frameworks/native/include/media/openmax

LOCAL_CFLAGS += -Wno-multichar -Werror -Wall
LOCAL_CLANG := true

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE:= codec

include $(BUILD_EXECUTABLE)

################################################################################

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	filters/argbtorgba.rs \
	filters/nightvision.rs \
	filters/saturation.rs \
	mediafilter.cpp \

LOCAL_SHARED_LIBRARIES := \
	libstagefright \
	liblog \
	libutils \
	libbinder \
	libstagefright_foundation \
	libmedia \
	libgui \
	libcutils \
	libui \
	libRScpp \

LOCAL_C_INCLUDES:= \
	$(TOP)/frameworks/av/media/libstagefright \
	$(TOP)/frameworks/native/include/media/openmax \
	$(TOP)/frameworks/rs/cpp \
	$(TOP)/frameworks/rs \

intermediates := $(call intermediates-dir-for,STATIC_LIBRARIES,libRS,TARGET,)
LOCAL_C_INCLUDES += $(intermediates)

LOCAL_STATIC_LIBRARIES:= \
	libstagefright_mediafilter

LOCAL_CFLAGS += -Wno-multichar -Werror -Wall
LOCAL_CLANG := true

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE:= mediafilter

include $(BUILD_EXECUTABLE)

################################################################################

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=               \
	muxer.cpp            \

LOCAL_SHARED_LIBRARIES := \
	libstagefright liblog libutils libbinder libstagefright_foundation \
	libmedia libgui libcutils libui libc

LOCAL_C_INCLUDES:= \
	frameworks/av/media/libstagefright \
	$(TOP)/frameworks/native/include/media/openmax

LOCAL_CFLAGS += -Wno-multichar -Werror -Wall
LOCAL_CLANG := true

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE:= muxer

include $(BUILD_EXECUTABLE)
