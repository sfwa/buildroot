################################################################################
#
# python-certifi
#
################################################################################

PYTHON_CERTIFI_VERSION = 14.05.14
PYTHON_CERTIFI_SOURCE = certifi-$(PYTHON_CERTIFI_VERSION).tar.gz
PYTHON_CERTIFI_SITE = https://pypi.python.org/packages/source/c/certifi
PYTHON_CERTIFI_SETUP_TYPE = setuptools

$(eval $(python-package))
