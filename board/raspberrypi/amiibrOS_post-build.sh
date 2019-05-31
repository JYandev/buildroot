#!/bin/sh

# Copy over the rpi boot config file.
cat amiibrOS_config.txt > ${BINARIES_DIR}/rpi-firmware/config.txt

# Build raylib and install to target:
cd ../raylib/src && make && cp ../build/*.so* ${TARGET_DIR}/usr/lib/
