#-------------------------------------------------
#
# Project created by QtCreator 2018-10-15T23:15:52
#
#-------------------------------------------------

QT       += widgets

QT       -= gui

TARGET = ClientList
TEMPLATE = lib

include(../../CTK.pri)
INCLUDEPATH += ../../include


CONFIG(debug, debug|release){
    DESTDIR = ../../../CTKWidgetPluginApp/bin/debug/MainPlugins
} else {
    DESTDIR = ../../../CTKWidgetPluginApp/bin/release/MainPlugins
}

DEFINES += CLIENTLIST_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    clientlistview.cpp \
    pluginimpl.cpp \
    pluginactivator.cpp

HEADERS += \
    clientlistview.h \
    pluginimpl.h \
    pluginactivator.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

RESOURCES += \
    resource.qrc

FORMS += \
    clientlistview.ui
