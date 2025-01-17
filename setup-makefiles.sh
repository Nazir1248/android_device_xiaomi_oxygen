#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# set -e

# # Required!
# DEVICE=oxygen
# VENDOR=xiaomi

# # Load extract_utils and do some sanity checks
# MY_DIR="${BASH_SOURCE%/*}"
# if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

# ANDROID_ROOT="${MY_DIR}/../../.."

# HELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"
# if [ ! -f "$HELPER" ]; then
# 	    echo "Unable to find helper script at $HELPER"
# 	        exit 1
# fi
# source "${HELPER}"

# # Initialize the helper
# setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}"

# # Warning headers and guards
# write_headers

# write_makefiles "${MY_DIR}/proprietary-files.txt" true

# # Finish
# write_footers

if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=oxygen
export DEVICE_COMMON=msm8953-common
export VENDOR=xiaomi
export VENDOR_COMMON=${VENDOR}

"./../../${VENDOR_COMMON}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
