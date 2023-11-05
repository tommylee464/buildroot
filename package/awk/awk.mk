################################################################################
#
# awk
#
################################################################################

AWK_VERSION = d801514094d1140dfc9f8571b9821082ddddf107
AWK_SITE = https://github.com/onetrueawk/awk.git
AWK_SITE_METHOD=git
AWK_GIT_SUBMODULES=YES
AWK_LICENSE =

ifeq ($(BR2_PACKAGE_LIBSIGSEGV),y)
AWK_DEPENDENCIES += libsigsegv
endif

# --with-mpfr requires an argument so just let
# configure find it automatically
ifeq ($(BR2_PACKAGE_MPFR),y)
AWK_DEPENDENCIES += mpfr
else
AWK_CONF_OPTS += --without-mpfr
endif

# --with-readline requires an argument so just let
# configure find it automatically
ifeq ($(BR2_PACKAGE_READLINE),y)
AWK_DEPENDENCIES += readline
else
AWK_CONF_OPTS += --without-readline
endif

HOST_AWK_CONF_OPTS = --without-readline --without-mpfr

define AWK_CREATE_SYMLINK
	ln -sf AWK $(TARGET_DIR)/usr/bin/awk
endef

AWK_POST_INSTALL_TARGET_HOOKS += AWK_CREATE_SYMLINK

define HOST_AWK_CREATE_SYMLINK
	ln -sf AWK $(HOST_DIR)/bin/awk
endef

HOST_AWK_POST_INSTALL_HOOKS += HOST_AWK_CREATE_SYMLINK

$(eval $(autotools-package))