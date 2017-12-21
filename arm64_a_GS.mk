include build/make/target/product/treble_common.mk
$(call inherit-product, device/phh/treble/base.mk)
$(call inherit-product, device/phh/treble/gapps.mk)

PRODUCT_NAME := treble_arm64_agS
PRODUCT_DEVICE := generic_arm64_a
PRODUCT_BRAND := Android
PRODUCT_MODEL := Treble with GS

PRODUCT_PACKAGES +=  phh-su
