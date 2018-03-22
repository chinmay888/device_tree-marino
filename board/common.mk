
# Shim libraries
PRODUCT_PACKAGES += \
    libmtkshim_log \
    libmtkshim_audio \
    libmtkshim_ui \
    libmtkshim_omx \
    libmtkshim_gps

# Display
PRODUCT_PACKAGES += \
    libion

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml

	# GPS library
PRODUCT_PACKAGES += \
    gps.mt6757 \
    libcurl
	
PRODUCT_PACKAGES += \
    libcurl

# Chromium
PRODUCT_PACKAGES += \
    Chromium


# Include explicitly to work around Facelock issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full

# FMRadio
MTK_FM_SUPPORT := true

PRODUCT_PACKAGES += \
    libfmjni \
    FMRadio

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck \
    fsck.f2fs \
    mkfs.f2fs \
    make_ext4fs

# exFAT
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat

# NTFS
PRODUCT_PACKAGES += \
    fsck.ntfs \
    mkfs.ntfs \
    mount.ntfs

# USB
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    mad_charger_res_images

# WallpaperPicker
PRODUCT_PACKAGES += \
    WallpaperPicker

# Sensor Calibration
PRODUCT_PACKAGES += \
    libem_sensor_jni

# ThemeInterfacer
PRODUCT_PACKAGES += \
    ThemeInterfacer

# Eleven
PRODUCT_PACKAGES += \
    Eleven


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Granular Volume Steps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=14 \
    ro.config.media_vol_steps=30

# SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1


# include other configs
include $(LOCAL_PATH)/board/permissions.mk
include $(LOCAL_PATH)/board/media.mk
include $(LOCAL_PATH)/board/wifi.mk
include $(LOCAL_PATH)/board/telephony.mk
include $(LOCAL_PATH)/board/google_override.mk
include $(LOCAL_PATH)/board/camera.mk
include $(LOCAL_PATH)/board/dalvik.mk
include $(LOCAL_PATH)/board/EngineeringMode.mk
include $(LOCAL_PATH)/board/power.mk
