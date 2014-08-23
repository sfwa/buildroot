################################################################################
#
# libftdi
#
################################################################################

LIBFTDI_VERSION = 1.1
LIBFTDI_SOURCE = libftdi1-$(LIBFTDI_VERSION).tar.bz2
LIBFTDI_SITE = http://www.intra2net.com/en/developer/libftdi/download/
LIBFTDI_DEPENDENCIES = libusb-compat libusb
LIBFTDI_INSTALL_STAGING = YES
LIBFTDI_CONFIG_SCRIPTS = libftdi1-config
LIBFTDI_AUTORECONF = YES

LIBFDTI_CONF_OPT = --without-examples

# configure detect it automaticaly so we need to force it
ifeq ($(BR2_PACKAGE_LIBTFDI_CPP),y)
LIBFDTI_CONF_OPT += --enable-libftdipp
else
LIBFDTI_CONF_OPT += --disable-libftdipp
endif

$(eval $(cmake-package))
