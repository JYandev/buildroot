################################################################################
#
# python-adafruit-platformdetect
#
################################################################################

PYTHON_ADAFRUIT_PLATFORMDETECT_VERSION = 1.0.3
PYTHON_ADAFRUIT_PLATFORMDETECT_SOURCE = Adafruit-PlatformDetect-$(PYTHON_ADAFRUIT_PLATFORMDETECT_VERSION).tar.gz
PYTHON_ADAFRUIT_PLATFORMDETECT_SITE = https://files.pythonhosted.org/packages/37/ec/b904a2cc9c09fe8c256a54102d3398bf0b92edd50c6a0956626bb4046cd8
PYTHON_ADAFRUIT_PLATFORMDETECT_SETUP_TYPE = setuptools
PYTHON_ADAFRUIT_PLATFORMDETECT_LICENSE = MIT
PYTHON_ADAFRUIT_PLATFORMDETECT_LICENSE_FILES = LICENSE

$(eval $(python-package))
