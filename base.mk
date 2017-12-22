#Huawei devices don't declare fingerprint hardware feature
#TODO: Proper detection
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

#APN and SPN
PRODUCT_COPY_FILES += \
	device/hesip/treble/copy/files/apns-conf.xml:system/etc/apns-conf.xml \
	device/hesip/treble/copy/files/spn-conf.xml:system/etc/spn-conf.xml

#Copy ES file manager
PRODUCT_COPY_FILES += \
	device/hesip/treble/copy/files/es.apk:system/app/es/es.apk
 
#add superuser apk
PRODUCT_COPY_FILES += \
	device/hesip/treble/copy/files/superuser.apk:system/app/superuser/superuser.apk
 
#Copy phone-location data
PRODUCT_COPY_FILES += \
	device/hesip/treble/copy/files/phonelocation.dat:system/media/location/suda-phonelocation.dat

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += device/hesip/treble/sepolicy
DEVICE_PACKAGE_OVERLAYS += device/hesip/treble/overlay

$(call inherit-product, vendor/hardware_overlay/overlay.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
