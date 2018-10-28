#-------------------------------------------------
#
# Project created by QtCreator 2018-10-27T17:19:59
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

QT += charts

TARGET = ch02-sysinfo
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
CONFIG+=sdk_no_version_check

SOURCES += \
        main.cpp \
        mainwindow.cpp \
    sysinfo.cpp \
    sysinfowidget.cpp \
    cpuwidget.cpp \
    memorywidget.cpp

HEADERS += \
        mainwindow.h \
    sysinfo.h \
    sysinfowidget.h \
    cpuwidget.h \
    memorywidget.h


COMPILE_MSG = "Compiling on"

windows {
    SOURCES += sysinfowindowsimpl.cpp
    HEADERS += sysinfowindowsimpl.h
    message($$COMPILE_MSG windows)
}

linux {
    SOURCES += sysinfolinuximpl.cpp
    HEADERS += sysinfolinuximpl.h
    message($$COMPILE_MSG linux)
}

macx {
    SOURCES += sysinfomacimpl.cpp
    HEADERS += sysinfomacimpl.h
    message($$COMPILE_MSG mac)
}

FORMS += \
        mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
