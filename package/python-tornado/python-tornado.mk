################################################################################
#
# python-tornado
#
################################################################################

PYTHON_TORNADO_VERSION = 4.0.1
PYTHON_TORNADO_SOURCE = tornado-$(PYTHON_TORNADO_VERSION).tar.gz
PYTHON_TORNADO_SITE = https://pypi.python.org/packages/source/t/tornado
PYTHON_TORNADO_LICENSE = Apache-2.0
PYTHON_TORNADO_SETUP_TYPE = setuptools
PYTHON_TORNADO_DEPENDENCIES = python-certifi python-ssl-match-hostname

$(eval $(python-package))
