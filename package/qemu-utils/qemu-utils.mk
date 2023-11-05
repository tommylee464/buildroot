################################################################################
#
# Qemu Utils Package
#
################################################################################

QEMU_UTILS_VERSION = e885b831bd0bf39f8a3d9d4332f679c6f9c9cffc
QEMU_UTILS_SITE = https://github.com/ppisa/qemu-utils.git
QEMU_UTILS_SITE_METHOD=git
QEMU_UTILS_GIT_SUBMODULES=YES
QEMU_UTILS_LICENSE = 

define QEMU_UTILS_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

$(eval $(autotools-package))
$(eval $(host-autotools-package))