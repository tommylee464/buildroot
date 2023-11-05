################################################################################
#
# polo file manager
#
################################################################################

POLOFM_VERSION = e27f7a47dc1c21192ed43534d1a1d09ddacb6202
POLOFM_SITE = https://github.com/teejee2008/polo.git
POLOFM_SITE_METHOD=git
POLOFM_GIT_SUBMODULES=YES
POLOFM_LICENSE =
POLOFM_DEPENDENCIES += libgee pv vte json-glib-dev libxml12 mediainfo p7zip tar pigz gzip pbzip2 p7zip 
POLOFM_DEPENDENCIES += tar pigz gzip pbzip2 bzip2 wget libimage-exiftool-perl awk gawk
POLOFM_DEPENDENCIES += qemu qemu-kvm qemu-utils gvfs rsync fish ffmpeg xz cpulimit ghostscript
POLOFM_DEPENDENCIES += libglib2 menu-cache libfm $(TARGET_NLS_DEPENDENCIES)
POLOFM_CONF_ENV = LIBS=$(TARGET_NLS_LIBS)

ifeq ($(BR2_PACKAGE_LIBGTK3_X11),y)
POLOFM_CONF_OPTS += --with-gtk=3
POLOFM_DEPENDENCIES += libgtk3
else
POLOFM_CONF_OPTS += --with-gtk=2
POLOFM_DEPENDENCIES += libgtk2
endif

define POLOFM_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

$(eval $(autotools-package))