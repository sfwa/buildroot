################################################################################
#
# python-ssl-match-hostname
#
################################################################################

PYTHON_SSL_MATCH_HOSTNAME_VERSION = 3.4.0.2
PYTHON_SSL_MATCH_HOSTNAME_SOURCE = backports.ssl_match_hostname-$(PYTHON_SSL_MATCH_HOSTNAME_VERSION).tar.gz
PYTHON_SSL_MATCH_HOSTNAME_SITE = https://pypi.python.org/packages/source/b/backports.ssl_match_hostname
PYTHON_SSL_MATCH_HOSTNAME_SETUP_TYPE = setuptools

$(eval $(python-package))
