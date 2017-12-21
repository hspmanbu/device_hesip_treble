GAPPS_VARIANT := micro
GAPPS_FORCE_PACKAGE_OVERRIDES := true
GAPPS_FORCE_BROWSER_OVERRIDES := true
GAPPS_FORCE_WEBVIEW_OVERRIDES := true
PRODUCT_PACKAGES += \
       Chrome \
       CalculatorGoogle \
       PrebuiltDeskClockGoogle \
       CalendarGooglePrebuilt \
       GoogleHome \
	   GooglePinyinIME \
       phh-overrides

$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)
