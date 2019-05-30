################################################################################
#
# python-rpi-ws281x
#
################################################################################

PYTHON_RPI_WS281X_VERSION = 4.1.0
PYTHON_RPI_WS281X_SOURCE = rpi_ws281x-$(PYTHON_RPI_WS281X_VERSION).tar.gz
PYTHON_RPI_WS281X_SITE = https://files.pythonhosted.org/packages/fc/84/65afe833d695fb8e654fa71020926a7a64d2817ffb2d381022b92d310d37
PYTHON_RPI_WS281X_SETUP_TYPE = setuptools
PYTHON_RPI_WS281X_LICENSE = MIT
PYTHON_RPI_WS281X_LICENSE_FILES = LICENSE lib/LICENSE

$(eval $(python-package))
