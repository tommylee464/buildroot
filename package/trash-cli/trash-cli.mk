################################################################################
#
# Trash-cli Package
#
################################################################################

TRASH_CLI_VERSION = 39fa684cc1aaa3825d85d39b6fb1d7e4fc464ca8
TRASH_CLI_SITE = https://github.com/andreafrancia/trash-cli.git
TRASH_CLI_SITE_METHOD=git
TRASH_CLI_GIT_SUBMODULES=YES
TRASH_CLI_LICENSE = 

define TRASH_CLI_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef


$(eval $(generic-package))
