################################################################################
#
# fish-shell package
#
################################################################################

FISH_VERSION = 3.6.1
FISH_SOURCE = fish-$(FISH_VERSION).tar.xz
FISH_SITE = https://github.com/fish-shell/fish-shell/releases/download/$(FISH_VERSION)
FISH_LICENSE = 
FISH_DEPENDENCIES = coreutils awk gawk gettext

define FISH_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

$(eval $(cmake-package))