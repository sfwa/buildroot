################################################################################
#
# imagescanner
#
################################################################################

IMAGESCANNER_VERSION = bc0a3b9ba2f035fcd940de0bc109e4a2f661c0cc
IMAGESCANNER_SITE = git://github.com/sfwa/imagescanner.git
IMAGESCANNER_DEPENDENCIES = jpeg python

define IMAGESCANNER_BUILD_CMDS
	$(TARGET_CXX) $(TARGET_CXXFLAGS) $(TARGET_LDFLAGS) \
		-std=c++11 -fpermissive \
		-lturbojpeg -ljpeg \
		-I$(STAGING_DIR)/usr/include \
		-L$(STAGING_DIR)/usr/lib \
		$(@D)/debayer.cpp -o $(@D)/debayer
endef

define IMAGESCANNER_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/root/imagescanner
	$(INSTALL) -D -m 755 $(@D)/debayer $(TARGET_DIR)/root/imagescanner/debayer
	$(INSTALL) -D -m 755 $(@D)/plog.py $(TARGET_DIR)/root/imagescanner/plog.py
	$(INSTALL) -D -m 755 $(@D)/scanner.py $(TARGET_DIR)/root/imagescanner/scanner.py
	$(INSTALL) -D -m 755 $(@D)/search.py $(TARGET_DIR)/root/imagescanner/search.py
endef

$(eval $(generic-package))
