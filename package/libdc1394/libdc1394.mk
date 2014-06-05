################################################################################
#
# libdc1394
#
################################################################################

LIBDC1394_VERSION = 2.2.1
LIBDC1394_SOURCE = libdc1394-$(LIBDC1394_VERSION).tar.gz
LIBDC1394_SITE = http://downloads.sourceforge.net/project/libdc1394/libdc1394-2/$(LIBDC1394_VERSION)
LIBDC1394_INSTALL_STAGING = YES
LIBDC1394_DEPENDENCIES = host-pkgconf libusb

$(eval $(autotools-package))
