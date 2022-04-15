QT += core gui charts concurrent network sql 3dcore 3drender 3dextras charts xml

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets opengl



CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


# GIS plugin
DEFINES +=  Q_GIS
PATH_TO_QGIS_PLUGIN=../qgisplugin
include($$PATH_TO_QGIS_PLUGIN/QGIS.pri)

PATH_TO_COMMON=../SimCenterCommon
include($$PATH_TO_COMMON/Common/Common.pri)

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
