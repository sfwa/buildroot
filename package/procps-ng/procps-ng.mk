################################################################################
#
# procps
#
################################################################################

PROCPS_NG_VERSION = 3.3.9
PROCPS_NG_SOURCE = procps-ng-$(PROCPS_NG_VERSION).tar.xz
PROCPS_NG_SITE = http://downloads.sourceforge.net/project/procps-ng/Production
PROCPS_NG_LICENSE = GPLv2+, libproc and libps LGPLv2+
PROCPS_NG_LICENSE_FILES = COPYING COPYING.LIB

PROCPS_NG_DEPENDENCIES = ncurses

$(eval $(autotools-package))
