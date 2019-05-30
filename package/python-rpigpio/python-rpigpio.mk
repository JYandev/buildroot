################################################################################
#
# python-rpigpio
#
################################################################################

PYTHON_RPIGPIO_VERSION = 0.6.5
PYTHON_RPIGPIO_SOURCE = RPi.GPIO-$(PYTHON_RPIGPIO_VERSION).tar.gz
PYTHON_RPIGPIO_SITE = https://files.pythonhosted.org/packages/af/2f/407b6e4cc8a0bdf434825a160bba1807991886b63cce16a5f1a6e1f24cdf
PYTHON_RPIGPIO_SETUP_TYPE = distutils
PYTHON_RPIGPIO_LICENSE = MIT

$(eval $(python-package))
