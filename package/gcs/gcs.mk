################################################################################
#
# gcs
#
################################################################################

GCS_VERSION = 2409beb4c7273fd9c7276f9e059c002135b66707
GCS_SITE = git://github.com/sfwa/gcs.git
GCS_SETUP_TYPE = setuptools

define GCS_INSTALL_HEIGHTMAPS
    (cd $(@D); mkdir -p $(TARGET_DIR)/usr/share/heightmaps; \
     cp data/* $(TARGET_DIR)/usr/share/heightmaps)
endef

GCS_POST_INSTALL_TARGET_HOOKS += GCS_INSTALL_HEIGHTMAPS

$(eval $(python-package))
