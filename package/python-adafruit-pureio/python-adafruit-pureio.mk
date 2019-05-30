################################################################################
#
# python-adafruit-pureio
#
################################################################################

PYTHON_ADAFRUIT_PUREIO_VERSION = 0.2.3
PYTHON_ADAFRUIT_PUREIO_SOURCE = Adafruit_PureIO-$(PYTHON_ADAFRUIT_PUREIO_VERSION).tar.gz
PYTHON_ADAFRUIT_PUREIO_SITE = https://files.pythonhosted.org/packages/b9/34/e8e6b4ee910d3682a7e7f7c84e8b8fe8c270ba47aa268269310c9fb89387
PYTHON_ADAFRUIT_PUREIO_SETUP_TYPE = setuptools
PYTHON_ADAFRUIT_PUREIO_LICENSE = MIT

$(eval $(python-package))
