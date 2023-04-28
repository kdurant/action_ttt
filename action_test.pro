QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

VERSION = 0.1.41

DESTDIR = $$absolute_path($${_PRO_FILE_PWD_}/bin/)

GIT_HASH = $$system(git --git-dir $$PWD/.git log -1 --pretty=format:%h)
DEFINES += GIT_HASH=\\\"$$GIT_HASH\\\"

GIT_DATE = $$system(git --git-dir $$PWD/.git --work-tree $$PWD log -1 --format=%cs )
DEFINES += GIT_DATE=\\\"$$GIT_DATE\\\"

TARGET = Radar_release
# TARGET = Radar_$$VERSION"_"$$GIT_DATE"_"$$GIT_HASH"_release"
