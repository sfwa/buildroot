################################################################################
#
# imagecapture
#
################################################################################

IMAGECAPTURE_VERSION = master
IMAGECAPTURE_SITE = git://github.com/sfwa/imagecapture.git
IMAGECAPTURE_DEPENDENCIES = libusb

$(eval $(cmake-package))
