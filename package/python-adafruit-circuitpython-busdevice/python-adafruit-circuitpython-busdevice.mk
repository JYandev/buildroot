################################################################################
#
# python-adafruit-circuitpython-busdevice
#
################################################################################

PYTHON_ADAFRUIT_CIRCUITPYTHON_BUSDEVICE_VERSION = 2.2.11
PYTHON_ADAFRUIT_CIRCUITPYTHON_BUSDEVICE_SOURCE = adafruit-circuitpython-busdevice-$(PYTHON_ADAFRUIT_CIRCUITPYTHON_BUSDEVICE_VERSION).tar.gz
PYTHON_ADAFRUIT_CIRCUITPYTHON_BUSDEVICE_SITE = https://files.pythonhosted.org/packages/39/46/82b0f595f7d9d94d197d26391db6b04addc389e7c66ee047117338204734
PYTHON_ADAFRUIT_CIRCUITPYTHON_BUSDEVICE_SETUP_TYPE = setuptools
PYTHON_ADAFRUIT_CIRCUITPYTHON_BUSDEVICE_LICENSE = MIT
PYTHON_ADAFRUIT_CIRCUITPYTHON_BUSDEVICE_LICENSE_FILES = LICENSE

$(eval $(python-package))
