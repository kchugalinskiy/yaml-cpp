include $(CLEAR_VARS)
LOCAL_MODULE := yaml_cpp
LOCAL_C_INCLUDES := $(LOCAL_PATH_YAML)/include/
LOCAL_C_INCLUDES += $(LOCAL_PATH_YAML)/src/
EXPORT_C_INCLUDES := $(LOCAL_PATH_YAML)/include/
FILE_LIST := $(wildcard $(LOCAL_PATH_YAML)/src/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH_YAML)/src/contrib/*.cpp)
LOCAL_SRC_FILES := $(FILE_LIST:$(LOCAL_PATH)/%=%)
LOCAL_CPPFLAGS := -std=c++11 -Wno-unused-variable -DANDROID -funwind-tables -latomic -pthread
include $(BUILD_SHARED_LIBRARY)

#restore the LOCAL_PATH
LOCAL_PATH:=$(USER_LOCAL_PATH)