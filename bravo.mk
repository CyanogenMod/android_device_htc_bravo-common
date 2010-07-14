#
# Copyright (C) 2009 The Android Open Source Project
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

PRODUCT_PROPERTY_OVERRIDES :=
    ro.media.dec.jpeg.memcap=20000000

DEVICE_PACKAGE_OVERLAYS := device/htc/bravo-common/overlay

PRODUCT_COPY_FILES := \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

# media config xml file
PRODUCT_COPY_FILES += \
    device/htc/bravo-common/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PACKAGES := \
    sensors.bravo \
    lights.bravo \
    librs_jni

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Bravo uses high-density artwork where available
PRODUCT_LOCALES := hdpi

PRODUCT_COPY_FILES += \
    device/htc/bravo-common/bravo-keypad.kl:system/usr/keylayout/bravo-keypad.kl \
    device/htc/bravo-common/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/bravo-common/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/drivers/net/wireless/bcm4329/bcm4329.ko:system/lib/modules/bcm4329.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/modules.seriomap:system/lib/modules/2.6.32.9-cyanogenmod/modules.seriomap \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/modules.alias:system/lib/modules/2.6.32.9-cyanogenmod/modules.alias \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/drivers/net/wireless/bcm4329/bcm4329.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/drivers/net/wireless/bcm4329/bcm4329.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/net/sunrpc/auth_gss/rpcsec_gss_krb5.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/net/sunrpc/auth_gss/rpcsec_gss_krb5.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/net/sunrpc/auth_gss/auth_rpcgss.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/net/sunrpc/auth_gss/auth_rpcgss.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/net/sunrpc/sunrpc.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/net/sunrpc/sunrpc.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/net/ipv6/xfrm6_mode_beet.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/net/ipv6/xfrm6_mode_beet.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/net/ipv6/ipcomp6.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/net/ipv6/ipcomp6.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/net/ipv6/xfrm6_mode_tunnel.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/net/ipv6/xfrm6_mode_tunnel.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/net/ipv6/xfrm6_tunnel.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/net/ipv6/xfrm6_tunnel.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/net/ipv6/sit.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/net/ipv6/sit.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/net/ipv6/xfrm6_mode_transport.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/net/ipv6/xfrm6_mode_transport.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/net/ipv6/esp6.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/net/ipv6/esp6.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/net/ipv6/tunnel6.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/net/ipv6/tunnel6.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/net/ipv6/ip6_tunnel.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/net/ipv6/ip6_tunnel.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/net/ipv6/mip6.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/net/ipv6/mip6.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/net/ipv6/ipv6.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/net/ipv6/ipv6.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/net/ipv6/ah6.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/net/ipv6/ah6.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/fs/nfs/nfs.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/fs/nfs/nfs.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/fs/exportfs/exportfs.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/fs/exportfs/exportfs.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/fs/nfsd/nfsd.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/fs/nfsd/nfsd.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/fs/fuse/fuse.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/fs/fuse/fuse.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/fs/cifs/cifs.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/fs/cifs/cifs.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/fs/nfs_common/nfs_acl.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/fs/nfs_common/nfs_acl.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/kernel/fs/lockd/lockd.ko:system/lib/modules/2.6.32.9-cyanogenmod/kernel/fs/lockd/lockd.ko \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/modules.ieee1394map:system/lib/modules/2.6.32.9-cyanogenmod/modules.ieee1394map \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/modules.order:system/lib/modules/2.6.32.9-cyanogenmod/modules.order \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/modules.ofmap:system/lib/modules/2.6.32.9-cyanogenmod/modules.ofmap \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/modules.alias.bin:system/lib/modules/2.6.32.9-cyanogenmod/modules.alias.bin \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/modules.ccwmap:system/lib/modules/2.6.32.9-cyanogenmod/modules.ccwmap \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/modules.usbmap:system/lib/modules/2.6.32.9-cyanogenmod/modules.usbmap \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/modules.isapnpmap:system/lib/modules/2.6.32.9-cyanogenmod/modules.isapnpmap \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/modules.symbols:system/lib/modules/2.6.32.9-cyanogenmod/modules.symbols \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/modules.dep.bin:system/lib/modules/2.6.32.9-cyanogenmod/modules.dep.bin \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/modules.dep:system/lib/modules/2.6.32.9-cyanogenmod/modules.dep \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/modules.symbols.bin:system/lib/modules/2.6.32.9-cyanogenmod/modules.symbols.bin \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/modules.pcimap:system/lib/modules/2.6.32.9-cyanogenmod/modules.pcimap \
    device/htc/bravo-common/2.6.32.9-cyanogenmod/modules.inputmap:system/lib/modules/2.6.32.9-cyanogenmod/modules.inputmap

$(call inherit-product-if-exists, vendor/htc/bravo-common/bravo-vendor.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)
