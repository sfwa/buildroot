################################################################################
#
# libgphoto2
#
################################################################################

LIBGPHOTO2_VERSION = 2.5.4
LIBGPHOTO2_SOURCE = libgphoto2-$(LIBGPHOTO2_VERSION).tar.gz
LIBGPHOTO2_SITE = http://downloads.sourceforge.net/project/gphoto/libgphoto/$(LIBGPHOTO2_VERSION)
LIBGPHOTO2_INSTALL_STAGING = YES
LIBGPHOTO2_CONF_OPT = --disable-docs
LIBGPHOTO2_DEPENDENCIES = host-pkgconf libtool libexif libusb

$(eval $(autotools-package))
