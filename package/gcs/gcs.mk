################################################################################
#
# gcs
#
################################################################################

GCS_VERSION = 6c6b0f29870ab56bec94029384810e1eb765bbef
GCS_SITE = git://github.com/sfwa/gcs.git
GCS_SETUP_TYPE = setuptools

define GCS_INSTALL_HEIGHTMAPS
    (cd $(@D); mkdir -p $(TARGET_DIR)/usr/share/heightmaps; \
     cp data/* $(TARGET_DIR)/usr/share/heightmaps)
endef

GCS_POST_INSTALL_TARGET_HOOKS += GCS_INSTALL_HEIGHTMAPS

$(eval $(python-package))
