#Huawei devices don't declare fingerprint hardware feature
#TODO: Proper detection
PRODUCT_COPY_FILES := \
	frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

#Use a more decent APN config
PRODUCT_COPY_FILES := \
	vendor/copy/files/apns-conf.xml:system/etc/apns-conf.xml

#Copy ES file manager
PRODUCT_COPY_FILES := \
	vendor/copy/files/es.apk:system/app/es/es.apk
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += device/phh/treble/sepolicy
DEVICE_PACKAGE_OVERLAYS += device/phh/treble/overlay

$(call inherit-product, vendor/hardware_overlay/overlay.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
