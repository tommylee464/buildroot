################################################################################
#
# GLIB
#
################################################################################

GLIB_VERSION = cd1e11d1b1810d0bffe49c72fe3dfd7c3e4931d2
GLIB_SITE = https://github.com/GNOME/glib.git
GLIB_SITE_METHOD=git
GLIB_GIT_SUBMODULES=YES
GLIB_LICENSE = 

define GLIB_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

$(eval $(autotools-package))
$(eval $(host-autotools-package))

