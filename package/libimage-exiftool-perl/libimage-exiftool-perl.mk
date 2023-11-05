################################################################################
#
# libimage-exiftool-perl
#
################################################################################

LIBIMAGE_EXIFTOOL_PERL_VERSION = 16bcaa2e588e52de8611fd945fb01e71e6c5e730
LIBIMAGE_EXIFTOOL_PERL_SITE = https://github.com/pandastream/libimage-exiftool-perl-9.27.git
LIBIMAGE_EXIFTOOL_PERL_SITE_METHOD=git
LIBIMAGE_EXIFTOOL_PERL_GIT_SUBMODULES=YES
LIBIMAGE_EXIFTOOL_PERL_LICENSE =

define LIBIMAGE_EXIFTOOL_PERL_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

$(eval $(perl-package))