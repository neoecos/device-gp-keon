include device/qcom/msm7627a/msm7627a.mk

PRODUCT_COPY_FILES += \
	device/geeksphone/keon/touch.idc:system/usr/idc/elan-touchscreen.idc \
	device/geeksphone/keon/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/geeksphone/keon/vold.fstab:system/etc/vold.fstab \
	device/geeksphone/keon/gps.conf:system/etc/gps.conf \
	device/geeksphone/keon/media_profiles.xml:system/etc/media_profiles.xml \
	device/geeksphone/keon/init/init.rc:root/init.rc \
	device/geeksphone/keon/init/init.target.rc:root/init.target.rc \
	device/geeksphone/keon/init/init.qcom.usb.rc:root/init.qcom.usb.rc \
	device/geeksphone/keon/init/init.qcom.rc:root/init.qcom.rc \
	device/geeksphone/keon/init/ueventd.rc:root/ueventd.rc \
	device/geeksphone/keon/audio.conf:system/etc/bluetooth/audio.conf \
	device/geeksphone/keon/keylayout/Generic.kl:system/usr/keylayout/Generic.kl

$(call inherit-product-if-exists, vendor/geeksphone/keon/vendor-blobs.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

PRODUCT_PROPERTY_OVERRIDES += \
	qemu.hw.mainkeys=1 \
	persist.dsds.enabled=false \
	ro.com.android.dataroaming=false \
	sys.need.restart.rild=1 \
	ro.multi.rild=false \
	ro.display.colorfill=1

PRODUCT_PACKAGES += \
	busybox

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_keon
PRODUCT_DEVICE := keon
PRODUCT_BRAND := qcom
PRODUCT_MANUFACTURER := GEEKSPHONE
PRODUCT_MODEL := GP-KEON

PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
	persist.usb.serialno=$(PRODUCT_NAME)
