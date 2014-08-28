################################################################################
#
# python-enum34
#
################################################################################

PYTHON_ENUM34_VERSION = 1.0
PYTHON_ENUM34_SOURCE = enum34-$(PYTHON_ENUM34_VERSION).tar.gz
PYTHON_ENUM34_SITE = https://pypi.python.org/packages/source/e/enum34
PYTHON_ENUM34_SETUP_TYPE = setuptools

$(eval $(python-package))
