include build/make/target/product/treble_common.mk
$(call inherit-product, device/he/treble/base.mk)
$(call inherit-product, device/he/treble/gapps.mk)

PRODUCT_NAME := arm64_a_GS
PRODUCT_DEVICE := generic_arm64_a
PRODUCT_BRAND := Android
PRODUCT_MODEL := Treble with GS

PRODUCT_PACKAGES +=  phh-su
