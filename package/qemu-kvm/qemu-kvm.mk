################################################################################
#
# Qemu KVM Package
#
################################################################################

QEMU_KVM_VERSION = e39fd7804dc86919960ba36fe9093cef54ab3fec
QEMU_KVM_SITE = https://github.com/tommylee464/qemu-kvm.git
QEMU_KVM_SITE_METHOD=git
QEMU_KVM_GIT_SUBMODULES=YES
QEMU_KVM_LICENSE =

define QEMU_KVM_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

$(eval $(autotools-package))
$(eval $(host-autotools-package))