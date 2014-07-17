################################################################################
#
# fcsdump
#
################################################################################

FCSDUMP_VERSION = master
FCSDUMP_SOURCE = fcsdump.c
FCSDUMP_SITE = https://raw.githubusercontent.com/sfwa/fcs/$(FCSDUMP_VERSION)/cpu
FCSDUMP_DEPENDENCIES = libftdi

define FCSDUMP_EXTRACT_CMDS
    cp $(DL_DIR)/$(FCSDUMP_SOURCE) $(FCSDUMP_DIR)
endef

define FCSDUMP_BUILD_CMDS
	$(TARGET_CC) $(TARGET_CFLAGS) $(TARGET_LDFLAGS) \
        -I$(STAGING_DIR)/usr/include/libftdi1 \
		$(@D)/fcsdump.c -o $(@D)/fscdump -lftdi1
endef

define FCSDUMP_INSTALL_CMDS
	$(INSTALL) -D -m 755 $(@D)/fcsdump $(HOST_DIR)/usr/bin/fcsdump
endef

$(eval $(generic-package))
