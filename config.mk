ifeq ($(TARGET_GAPPS_ARCH),)
$(error "GAPPS: TARGET_GAPPS_ARCH is undefined")
endif

ifneq ($(TARGET_GAPPS_ARCH),arm)
ifneq ($(TARGET_GAPPS_ARCH),arm64)
$(error "GAPPS: Only arm and arm64 are allowed")
endif
endif

TARGET_MINIMAL_APPS ?= false

$(call inherit-product, vendor/gapps/common-blobs.mk)

# Include package overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/gapps/overlay
DEVICE_PACKAGE_OVERLAYS += \
    vendor/gapps/overlay/common/

# framework
PRODUCT_PACKAGES += \
    com.google.android.maps \
    com.google.android.media.effects \
    com.google.widevine.software.drm

ifeq ($(IS_PHONE),true)
PRODUCT_PACKAGES += \
    com.google.android.dialer.support
endif

# app
PRODUCT_PACKAGES += \
    GoogleExtShared


# priv-app
PRODUCT_PACKAGES += \
    AndroidMigratePrebuilt \
    AndroidPlatformServices \
    ConfigUpdater \
    ConnMetrics \
    GoogleBackupTransport \
    GoogleExtServices \
    GoogleFeedback \
    GoogleOneTimeInitializer \
    GooglePartnerSetup \
    GoogleServicesFramework \
    PrebuiltGmsCorePi \
    StorageManagerGoogle \
    Turbo
