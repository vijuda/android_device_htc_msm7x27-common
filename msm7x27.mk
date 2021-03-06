#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PACKAGE_OVERLAYS += device/htc/msm7x27-common/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml
#    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \

# Media
PRODUCT_COPY_FILES += \
    device/htc/msm7x27-common/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/msm7x27-common/media_profiles.xml:system/etc/media_profiles.xml

# WI-FI
PRODUCT_COPY_FILES += \
    device/htc/msm7x27-common/firmware/bcm4329.hcd:system/etc/firmware/bcm4329.hcd \
    device/htc/msm7x27-common/firmware/fw_bcm4329.bin:system/etc/firmware/fw_bcm4329.bin \
    device/htc/msm7x27-common/firmware/fw_bcm4329_apsta.bin:system/etc/firmware/fw_bcm4329_apsta.bin \
    device/htc/msm7x27-common/firmware/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/htc/msm7x27-common/firmware/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/htc/msm7x27-common/firmware/hostapd.conf:system/etc/wifi/hostapd.conf 

# Bluetooth/A2DP configuration files
PRODUCT_COPY_FILES += \
        device/htc/msm7x27-common/bluetooth/config/main.conf:system/etc/bluetooth/main.conf \
        device/htc/msm7x27-common/bluetooth/config/main.conf:system/etc/bluetooth/audio.conf \
        device/htc/msm7x27-common/bluetooth/config/main.conf:system/etc/bluetooth/input.conf \
        device/htc/msm7x27-common/bluetooth/config/main.conf:system/etc/bluetooth/auto_pairing.conf \
        device/htc/msm7x27-common/bluetooth/config/main.conf:system/etc/bluetooth/blacklist.conf

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.marvel \
    audio.primary \
    audio.usb.default \
    libtinyalsa \
    libaudioutils

### Sensors (Compass, G-Sensor, Proximity, ...)
PRODUCT_PACKAGES += \
    sensors.marvel \
    lights.marvel

# Video
PRODUCT_PACKAGES += \
    copybit.msm7x27 \
    gralloc.msm7x27 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

# Camera
PRODUCT_PACKAGES += \
    camera.msm7x27 \
    libcamera

# QCOM OMX
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

# GPS
PRODUCT_PACKAGES += \
    gps.msm7x27 \
    librpc

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    brcm_patchram_plus \
    Superuser

### Add system daemons
PRODUCT_PACKAGES += \
    rild

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    ro.opengles.surface.rgb565=true \
    com.qc.hardware=true \
    debug.enabletr=false \
    debug.hwui.render_dirty_regions=false \
    debug.qctwa.statusbar=1 \
    debug.qctwa.preservebuf=1 \
    hwui.print_config=choice \
    persist.sys.strictmode.visual=false

# Stagefright
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=false \
    media.stagefright.enable-scan=false \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true

# Camera and Camcorder
PRODUCT_PROPERTY_OVERRIDES += \
    debug.camcorder.disablemeta=1 \
    ro.htc.camerahack=msm7k

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.a1026.nsForVoiceRec = 0 \
    media.a1026.enableA1026 = 1

# We have enough storage space to hold precise GC data
#PRODUCT_TAGS += dalvik.gc.type-precise

### Artwork
PRODUCT_LOCALES += mdpi

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# BeatsAudio Engine [by OWL PROJECT]
$(call inherit-product, vendor/BeatsAudio/engine.mk)

# Include Adreno200 vendor blobs
$(call inherit-product, vendor/qcom/msm7x27/qcom-vendor.mk)
