################################################################################
#
# python-adafruit-circuitpython-pn532
#
################################################################################

PYTHON_ADAFRUIT_CIRCUITPYTHON_PN532_VERSION = 2.0.5
PYTHON_ADAFRUIT_CIRCUITPYTHON_PN532_SOURCE = adafruit-circuitpython-pn532-$(PYTHON_ADAFRUIT_CIRCUITPYTHON_PN532_VERSION).tar.gz
PYTHON_ADAFRUIT_CIRCUITPYTHON_PN532_SITE = https://files.pythonhosted.org/packages/14/40/f9de7ff79d348ee70d01686871a8b12cc35e825b159ed21a61585741c7ba
PYTHON_ADAFRUIT_CIRCUITPYTHON_PN532_SETUP_TYPE = setuptools
PYTHON_ADAFRUIT_CIRCUITPYTHON_PN532_LICENSE = MIT
PYTHON_ADAFRUIT_CIRCUITPYTHON_PN532_LICENSE_FILES = LICENSE

$(eval $(python-package))
