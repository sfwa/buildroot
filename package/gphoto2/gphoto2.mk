################################################################################
#
# gphoto2
#
################################################################################

GPHOTO2_VERSION = 2.5.4
GPHOTO2_SOURCE = gphoto2-$(GPHOTO2_VERSION).tar.gz
GPHOTO2_SITE = http://downloads.sourceforge.net/project/gphoto/gphoto/$(GPHOTO2_VERSION)
GPHOTO2_INSTALL_STAGING = YES
GPHOTO2_CONF_OPT = --disable-docs
GPHOTO2_DEPENDENCIES = libgphoto2 libexif popt

$(eval $(autotools-package))
