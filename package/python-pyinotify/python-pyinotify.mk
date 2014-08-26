################################################################################
#
# python-pyinotify
#
################################################################################

PYTHON_PYINOTIFY_VERSION = 0.9.4
PYTHON_PYINOTIFY_SOURCE = $(PYTHON_PYINOTIFY_VERSION).tar.gz
PYTHON_PYINOTIFY_SITE = https://github.com/seb-m/pyinotify/archive/
PYTHON_PYINOTIFY_SETUP_TYPE = distutils

$(eval $(python-package))
