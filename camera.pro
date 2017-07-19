#-------------------------------------------------
#
# Project created by QtCreator 2017-06-30T08:50:55
#
#-------------------------------------------------

QT       += core gui quickwidgets multimedia multimediawidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets



TARGET = cameraView
TEMPLATE = app

CONFIG += link_pkgconfig
GST_VERSION = 1.0

PKGCONFIG += \
    gstreamer-$$GST_VERSION \
    gstreamer-base-$$GST_VERSION \
    gstreamer-audio-$$GST_VERSION \
    gstreamer-video-$$GST_VERSION \
    gstreamer-pbutils-$$GST_VERSION

DEFINES += HAVE_GST_PHOTOGRAPHY
LIBS += -lgstphotography-$$GST_VERSION
DEFINES += GST_USE_UNSTABLE_API #prevents warnings because of unstable photography API

DEFINES += HAVE_GST_ENCODING_PROFILES

DEFINES += USE_V4L

INCLUDEPATH +=$$PWD base
include(base/base.pri)

SOURCES += main.cpp\
        mainwindow.cpp \
    cameratopwidgets.cpp \
    camerawidgets.cpp \
    cameraquickcontentwidget.cpp \
    camerapreviewwidgets.cpp \
    global_value.cpp

HEADERS  += mainwindow.h \
    cameratopwidgets.h \
    camerawidgets.h \
    cameraquickcontentwidget.h \
    camerapreviewwidgets.h \
    global_value.h

RESOURCES += \
    res_main.qrc
