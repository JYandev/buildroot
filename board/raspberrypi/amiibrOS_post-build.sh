#!/bin/sh

# Copy over the rpi boot config file.
cat amiibrOS_config.txt > ${BINARIES_DIR}/rpi-firmware/config.txt

# Build raylib and install to target:
(cd ../amiibrOS-raylib/src && make && cp -r ../build/*.so* \
  ${TARGET_DIR}/usr/lib/)

# Build amiibrOS system software and install to target:
(cd ../subproj/main_interface && make clean && make rpi \
  && mkdir -p ${TARGET_DIR}/usr/bin/amiibrOS/main_interface \
  && cp -r build/* ${TARGET_DIR}/usr/bin/amiibrOS/main_interface)

(cd ../subproj/os_ctrl && make clean && make rpi \
  && mkdir -p ${TARGET_DIR}/usr/bin/amiibrOS/os_ctrl \
  && cp -r build/* ${TARGET_DIR}/usr/bin/amiibrOS/os_ctrl)
