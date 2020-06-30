DEVICE_DIR := device/lenovo/TB3710F
VENDOR_DIR := vendor/lenovo/TB3710F

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# call dalvik heap config & hwui memory config
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)     
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# The gps config
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Inherit device configuration
$(call inherit-product, $(DEVICE_DIR)/full_TB3710F.mk)
$(call inherit-product, $(DEVICE_DIR)/device.mk)
$(call inherit-product, $(DEVICE_DIR)/sepolicy/sepolicy.mk)

# Get non-open-source device specific aspects
$(call inherit-product-if-exists, $(VENDOR_DIR)/TB3710F-vendor.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := TB3710F
PRODUCT_NAME := cm_TB3710F
PRODUCT_MODEL := Lenovo TB3-710F
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_BRAND := Lenovo
PRODUCT_RELEASE_NAME := TB3-710F
PRODUCT_CHARACTERISTICS := tablet

# Resolution
TARGET_SCREEN_WIDTH := 600
TARGET_SCREEN_HEIGHT := 1024

