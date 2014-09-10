################################################################################
#
# gcs
#
################################################################################

GCS_VERSION = 81d5f85ef4ca6c93234f83be153c9a0191d4984b
GCS_SITE = git://github.com/sfwa/gcs.git
GCS_SETUP_TYPE = setuptools

define GCS_INSTALL_HEIGHTMAPS
    (cd $(@D); mkdir -p $(TARGET_DIR)/usr/share/heightmaps; \
     cp data/* $(TARGET_DIR)/usr/share/heightmaps)
endef

GCS_POST_INSTALL_TARGET_HOOKS += GCS_INSTALL_HEIGHTMAPS

$(eval $(python-package))
