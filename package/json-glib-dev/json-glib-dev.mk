################################################################################
#
# json-glib-dev
#
################################################################################

JSON_GLIB_DEV_VERSION_MAJOR = 1.0
JSON_GLIB_DEV_VERSION = $(JSON_GLIB_DEV_VERSION_MAJOR).0
JSON_GLIB_DEV_SITE = https://download.gnome.org/sources/json-glib/$(JSON_GLIB_DEV_VERSION_MAJOR)
JSON_GLIB_DEV_SOURCE = json-glib-$(JSON_GLIB_DEV_VERSION).tar.xz
JSON_GLIB_DEV_LICENSE = LGPL-2.1+
JSON_GLIB_DEV_LICENSE_FILES = json-glib-1.0.0.changes
JSON_GLIB_DEV_INSTALL_STAGING = YES

JSON_GLIB_DEV_DEPENDENCIES = \
	$(TARGET_NLS_DEPENDENCIES) \
	host-pkgconf \
	libglib2

ifeq ($(BR2_PACKAGE_GOBJECT_INTROSPECTION),y)
JSON_GLIB_DEV_CONF_OPTS += -Dintrospection=enabled
JSON_GLIB_DEV_DEPENDENCIES += gobject-introspection
else
JSON_GLIB_DEV_CONF_OPTS += -Dintrospection=disabled
endif

JSON_GLIB_DEV_LDFLAGS = $(TARGET_LDFLAGS) $(TARGET_NLS_LIBS)

$(eval $(generic-package))