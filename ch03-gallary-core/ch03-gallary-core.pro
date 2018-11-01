TEMPLATE = subdirs

SUBDIRS += \
    gallary-core \
    gallary-desktop \
    gallary-mobile

gallary-desktop.depends = gallary-core
gallary-mobile.depends = gallary-core
