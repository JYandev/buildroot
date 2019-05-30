################################################################################
#
# python-sysv-ipc
#
################################################################################

PYTHON_SYSV_IPC_VERSION = 1.0.0
PYTHON_SYSV_IPC_SOURCE = sysv_ipc-$(PYTHON_SYSV_IPC_VERSION).tar.gz
PYTHON_SYSV_IPC_SITE = https://files.pythonhosted.org/packages/08/7d/a862f3045fa191eeece23650725273f2ccaf9ac6b95443dfe4cac6508638
PYTHON_SYSV_IPC_SETUP_TYPE = setuptools
PYTHON_SYSV_IPC_LICENSE = FIXME: please specify the exact BSD version
PYTHON_SYSV_IPC_LICENSE_FILES = LICENSE

$(eval $(python-package))
