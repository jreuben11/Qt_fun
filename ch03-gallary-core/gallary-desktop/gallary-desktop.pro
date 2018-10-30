#-------------------------------------------------
#
# Project created by QtCreator 2018-10-29T13:32:20
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = gallary-desktop
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++14

SOURCES += \
        main.cpp \
        mainwindow.cpp \
    albumlistwidget.cpp \
    thumbnailproxymodel.cpp \
    albumwidget.cpp \
    picturedelegate.cpp \
    picturewidget.cpp \
    gallarywidget.cpp

HEADERS += \
        mainwindow.h \
    albumlistwidget.h \
    thumbnailproxymodel.h \
    albumwidget.h \
    picturedelegate.h \
    picturewidget.h \
    gallarywidget.h

FORMS += \
        mainwindow.ui \
    albumlistwidget.ui \
    albumwidget.ui \
    picturewidget.ui \
    gallarywidget.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../gallary-core/release/ -lgallary-core
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../gallary-core/debug/ -lgallary-core
else:unix: LIBS += -L$$OUT_PWD/../gallary-core/ -lgallary-core

INCLUDEPATH += $$PWD/../gallary-core
DEPENDPATH += $$PWD/../gallary-core

RESOURCES += \
    resource.qrc

DISTFILES += \
    icons/album-add.png \
    icons/album-delete.png \
    icons/album-edit.png \
    icons/back-to-gallery.png \
    icons/photo-add.png \
    icons/photo-delete.png \
    icons/photo-next.png \
    icons/photo-previous.png
