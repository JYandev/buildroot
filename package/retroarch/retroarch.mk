################################################################################
#
# RetroArch
#
################################################################################

RETROARCH_VERSION = d80dee882fcf9262bac7068b405aba60e336cfdd
RETROARCH_SITE = git://github.com/libretro/RetroArch.git
RETROARCH_SITE_METHOD = git
RETROARCH_LICENSE = GPLv3+
RETROARCH_DEPENDENCIES = host-pkgconf

# === amiibrOS RPI 3B+ RetroArch ===
RETROARCH_LIBRETRO_BOARD = rpi3

# Don't Have/Want:
RETROARCH_CONF_OPTS += --disable-sdl2 --disable-sdl
RETROARCH_CONF_OPTS += --disable-opengl1 --disable-opengl
RETROARCH_CONF_OPTS += --disable-x11
RETROARCH_CONF_OPTS += --disable-oss
RETROARCH_CONF_OPTS += --disable-libusb
RETROARCH_CONF_OPTS += --disable-freetype

# Hardware:
RETROARCH_CONF_OPTS += --enable-floathard
RETROARCH_CONF_OPTS += --enable-neon
RETROARCH_CONF_OPTS += --enable-dispmanx

# For Audio:
RETROARCH_CONF_OPTS += --enable-alsa
RETROARCH_DEPENDENCIES += alsa-lib

# For Graphics:
RETROARCH_CONF_OPTS += --enable-opengles
RETROARCH_DEPENDENCIES += libgles
RETROARCH_CONF_OPTS += --enable-egl
RETROARCH_DEPENDENCIES += libegl
RETROARCH_DEPENDENCIES += libopenvg

# For Input:
RETROARCH_DEPENDENCIES += udev
RETROARCH_CONF_OPTS += --enable-udev

# Misc.:
RETROARCH_CONF_OPTS += --enable-rgui --enable-xmb --enable-ozone
RETROARCH_CONF_OPTS += --enable-threads --enable-dylib
RETROARCH_CONF_OPTS += --enable-flac --enable-lua
RETROARCH_CONF_OPTS += --enable-networking

# Compression:
RETROARCH_CONF_OPTS += --enable-zlib
RETROARCH_DEPENDENCIES += zlib

# === Compilation ===
RETROARCH_COMPILER_COMMONS_CFLAGS = $(COMPILER_COMMONS_CFLAGS_SO)
RETROARCH_COMPILER_COMMONS_CXXFLAGS = $(COMPILER_COMMONS_CXXFLAGS_SO)
RETROARCH_COMPILER_COMMONS_LDFLAGS = $(COMPILER_COMMONS_LDFLAGS_SO)

define RETROARCH_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
		$(TARGET_CONFIGURE_ARGS) \
		$(TARGET_CONFIGURE_OPTS) \
		CFLAGS="$(TARGET_CFLAGS) $(RETROARCH_COMPILER_COMMONS_CFLAGS)" \
		CXXFLAGS="$(TARGET_CXXFLAGS) $(RETROARCH_COMPILER_COMMONS_CXXFLAGS)" \
		LDFLAGS="$(TARGET_LDFLAGS) $(RETROARCH_COMPILER_COMMONS_LDFLAGS) -lc" \
		CROSS_COMPILE="$(HOST_DIR)/bin/" \
		PKG_CONFIG_PATH="$(STAGING_DIR)/usr/lib/pkgconfig/" \
		./configure \
		--prefix=/usr \
		$(RETROARCH_CONF_OPTS) \
	)
endef

define RETROARCH_FIX_LIBS
	$(SED) "s|-\([IL]\)/usr|-\1$(STAGING_DIR)/usr|g" $(@D)/config.mk
endef

RETROARCH_POST_CONFIGURE_HOOKS += RETROARCH_FIX_LIBS

define RETROARCH_BUILD_CMDS
	$(MAKE) CXX="$(TARGET_CXX)" CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) all
endef

define RETROARCH_INSTALL_TARGET_CMDS
	$(MAKE) CXX="$(TARGET_CXX)" -C $(@D) DESTDIR=$(TARGET_DIR) install
endef

$(eval $(generic-package))
