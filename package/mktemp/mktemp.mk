################################################################################
# 
# mktemp
#
################################################################################

MKTEMP_VERSION = e21334c9f6e6eec3f2e92e0c21c88af00dfe659e
MKTEMP_SITE = https://github.com/witwall/mktemp.git
MKTEMP_SITE_METHOD=git
MKTEMP_GIT_SUBMODULES=YES
MKTEMP_LICENSE = 

define MKTEMP_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

$(eval $(autotools-package))
$(eval $(host-autotools-package))