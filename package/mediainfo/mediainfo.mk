################################################################################
#
# media info package
#
################################################################################

MEDIAINFO_VERSION = efdde33b336394d058fe6a75447d3cca3ac81900
MEDIAINFO_SITE = https://github.com/MediaArea/MediaInfo.git
MEDIAINFO_SITE_METHOD=git
MEDIAINFO_GIT_SUBMODULES=YES
MEDIAINFO_LICENSE = 

define MEDIAINFO_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

$(eval $(autotools-package))