# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PACKAGE_OVERLAYS += device/asus/transformer-common/overlay

# Files needed for boot image
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.cardhu.rc:root/init.cardhu.rc \
    $(LOCAL_PATH)/ramdisk/init.tf.rc:root/init.tf.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.cardhu.rc:root/ueventd.cardhu.rc \
    $(LOCAL_PATH)/ramdisk/init.cardhu.usb.rc:root/init.cardhu.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.cardhu.cpu.rc:root/init.cardhu.cpu.rc \
    $(LOCAL_PATH)/ramdisk/fstab.cardhu:root/fstab.cardhu \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab

# Prebuilt config files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gpsconfig.xml:system/etc/gps/gpsconfig.xml \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

# Input device configuration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/atmel-maxtouch.idc:system/usr/idc/atmel-maxtouch.idc \
    $(LOCAL_PATH)/idc/elantech_touchscreen.idc:system/usr/idc/elantech_touchscreen.idc \
    $(LOCAL_PATH)/idc/elan-touchscreen.idc:system/usr/idc/elan-touchscreen.idc \
    $(LOCAL_PATH)/idc/panjit_touch.idc:system/usr/idc/panjit_touch.idc \
    $(LOCAL_PATH)/idc/raydium_ts.idc:system/usr/idc/raydium_ts.idc \
    $(LOCAL_PATH)/idc/sis_touch.idc:system/usr/idc/sis_touch.idc \
    $(LOCAL_PATH)/idc/Vendor_0457_Product_0817.idc:system/usr/idc/Vendor_0457_Product_0817.idc \
    $(LOCAL_PATH)/idc/Vendor_0457_Product_1012.idc:system/usr/idc/Vendor_0457_Product_1012.idc 

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    $(LOCAL_PATH)/asusdec/org.omnirom.asusdec.xml:system/etc/permissions/org.omnirom.asusdec.xml

# media files
PRODUCT_COPY_FILES += \
    device/asus/transformer-common/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/asus/transformer-common/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/asus/transformer-common/configs/audio_policy.conf:system/etc/audio_policy.conf
# gps config files
PRODUCT_COPY_FILES += \
    device/asus/transformer-common/configs/gpsconfig.xml:system/etc/gps/gpsconfig.xml \
    device/asus/transformer-common/configs/gps.conf:system/etc/gps.conf \
    device/asus/transformer-common/configs/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf \
    device/asus/transformer-common/configs/get-gps-lto:system/bin/get-gps-lto

# Extra packages to build for this device
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    make_ext4fs \
    setup_fs \
    audio.a2dp.default \
    audio.r_submix.default \
    tinymix \
    libaudioutils \
    AutoParts \
    blobpack_tfp \
    mischelp \
    wifimacwriter \
    org.omnirom.asusdec \
    libasusdec_jni

# Propertys spacific for this device
PRODUCT_PROPERTY_OVERRIDES := \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=180 \
    tf.enable=y \
    ro.opengles.version=131072 \
    persist.sys.usb.config=mtp,adb
   
# Allow dalvik to use JIT (Just in Time) Compiler
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=init:jit \
    dalvik.vm.verify-bytecode=false \
    dalvik.vm.checkjni=false \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.check-dex-sum=false 
    
# Dalvik flags
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-flags=m=y

# Improve Touch Pressure
PRODUCT_PROPERTY_OVERRIDES += \
    touch.size.calibration=geometric \
    touch.size.scale=100 \
    touch.pressure.calibration=amplitude \
    touch.pressure.scale=0.001
    
# Battery savers
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.disable.power.collapse=0
    
# Increase jpg quality to 100%
PRODUCT_PROPERTY_OVERRIDES += \
    ro.media.enc.jpeg.quality=100 \
    ro.media.dec.jpeg.memcap=80000000 \
    ro.media.enc.hprof.vid.bps=8000000
    
# Smoother video streaming
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=true \
    media.stagefright.enable-scan=false \
    media.stagefright.enable-http=true
    
# Device will boot faster
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.hw_quickpoweron=true

# Extra persist settings
PRODUCT_PROPERTY_OVERRIDES += \
    persist.adb.notify=0 \
    persist.service.adb.enable=1 \
    persist.service.mount.playsnd=0 \
    persist.service.debuggable=1 \
    ro.kernel.android.checkjni=0
    
# Improve Waking Up from Sleep
PRODUCT_PROPERTY_OVERRIDES += \
	pm.sleep_mode=2
	
# Better Rendering
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.composition.type=gpu \
	debug.composition.type=gpu \
	dev.pm.gpu_samplingrate = 1 \
	debug.egl.profiler=1 \
	debug.egl.hw=1 \
	persist.sys.ui.hw=true \
	debug.sf.hw=1 \
	force_hw_ui=true \
	video.accelerate.hw=1

# Inherit tablet dalvik settings
$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
