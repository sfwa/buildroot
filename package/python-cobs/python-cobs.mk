################################################################################
#
# python-cobs
#
################################################################################

PYTHON_COBS_VERSION = 1.0.0
PYTHON_COBS_SOURCE = cobs-$(PYTHON_COBS_VERSION).tar.gz
PYTHON_COBS_SITE = https://pypi.python.org/packages/source/c/cobs
PYTHON_COBS_SETUP_TYPE = distutils

$(eval $(python-package))
