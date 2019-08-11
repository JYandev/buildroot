#!/bin/sh

# ============
set -u
set -e

# Add a console on tty1
#if [ -e ${TARGET_DIR}/etc/inittab ]; then
#  grep -qE '^tty1::' ${TARGET_DIR}/etc/inittab || \
#	sed -i '/GENERIC_SERIAL/atty1::respawn:/sbin/getty -L  tty1 0 vt100 # HDMI \
#    console' ${TARGET_DIR}/etc/inittab
#fi
# ============

# Copy over the rpi boot config files.
cat amiibrOS_config.txt > ${BINARIES_DIR}/rpi-firmware/config.txt
cat amiibrOS_cmdline.txt > ${BINARIES_DIR}/rpi-firmware/cmdline.txt

# Build raylib and install to target:
(cd ../amiibrOS-raylib/src && make && cp -r ../build/*.so* \
  ${TARGET_DIR}/usr/lib/)

# Build amiibrOS system software and install to target:
(cd ../subproj/amiibrOS && make clean && make rpi \
  && mkdir -p ${TARGET_DIR}/usr/bin/amiibrOS/ \
  && cp -r build/* ${TARGET_DIR}/usr/bin/amiibrOS)
(mkdir -p ${TARGET_DIR}/usr/bin/amiibrOS/amiibo_scan \
  && cp ../subproj/amiibo_scan/amiibo_scan.py \
  ${TARGET_DIR}/usr/bin/amiibrOS/amiibo_scan)
