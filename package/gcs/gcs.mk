################################################################################
#
# gcs
#
################################################################################

GCS_VERSION = bee540ced8b353b56197417c297287f5ebe4f213
GCS_SITE = git://github.com/sfwa/gcs.git
GCS_SETUP_TYPE = setuptools

define GCS_INSTALL_HEIGHTMAPS
    (cd $(@D); mkdir -p $(TARGET_DIR)/usr/share/heightmaps; \
     cp data/* $(TARGET_DIR)/usr/share/heightmaps)
endef

GCS_POST_INSTALL_TARGET_HOOKS += GCS_INSTALL_HEIGHTMAPS

$(eval $(python-package))
