TEMPLATE = subdirs

SUBDIRS += \
    gallary-core \
    gallary-desktop

gallary-desktop.depends = gallary-core
