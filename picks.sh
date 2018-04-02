#!/bin/bash

function kpick() {
  repopick $1 || exit 1
}

source build/envsetup.sh

# -------------- DEVICE STUFF --------------

# device/lge/bullhead
kpick 208979 # bullhead: Update makefile guards to allow child variants
kpick 208980 # bullhead: Make setup-makefiles imitate a common repository version

# device/samsung/hlte-common

# device/samsung/klte-common

# device/samsung/msm8974-common
kpick 210313 # msm8974-common: Binderize them all

# kernel/samsung/msm8974

# mata stuff
kpick 209367 # mata: fix hbtp_grip script permission
kpick 204570 # mata: Build textclassifier's smart selection
kpick 206118 # InputMethodManagerService: adjust grip mode for input enable/disable
#kpick 206121 # [HAX] remove stylus shit from touchscreen input

# -------------- PLATFORM STUFF --------------

# build

# external/toybox
kpick 209019 # toybox: Use ISO C/clang compatible __typeof__ in minof/maxof macros

# frameworks/av
kpick 206430 # CameraService: Fix deadlock in binder death cleanup.
kpick 206431 # libstagefright: Free buffers on observer died
kpick 206432 # Camera: fix use after disconnect error
kpick 206433 # stagefright: ACodec: Resolve empty vendor parameters usage
kpick 206434 # media: fix infinite wait at source for HAL1 based recording
kpick 206435 # libstagefright: use 64-bit usage for native_window_set_usage
kpick 206427 # camera/media: Support legacy HALv1 camera in mediaserver

# system/core
kpick 206119 # init: I hate safety net

# system/sepolicy
kpick 206428 # Add rules required for TARGET_HAS_LEGACY_CAMERA_HAL1
kpick 206429 # Adapt add_service uses for TARGET_HAS_LEGACY_CAMERA_HAL1

# updater
kpick 206046 # update_attempter: don't limit the cpu and run in foreground
kpick 206117 # update_verifier: skip verity to determine successful on lineage builds
kpick 206128 # common: add update_engine policies
kpick 206681 # Updater: fix bad state when opening activity during A/B update
kpick 206682 # Updater: unbind stale callbacks when reconnecting to A/B

# vendor/lineage
kpick 206426 # soong_config: Add TARGET_HAS_LEGACY_CAMERA_HAL1 variable
kpick 206996 # soong_config: Add TARGET_USES_MEDIA_EXTENSIONS variable

# -------------- TOPIC STUFF --------------
repopick -Q "loscoins+status:open+branch:lineage-15.1"

exit 0
