TARGET = easyloggingpp
TEMPLATE = lib
macx {
    DEFINES += AUTO_INITIALIZE_EASYLOGGINGPP
    DEFINES += ELPP_AS_DLL
    DESTDIR = ../../../bin/Sultan.app/Contents/Frameworks
    QMAKE_LFLAGS_SONAME = -Wl,-install_name,@executable_path/../Frameworks/
    QMAKE_LIBDIR += $$OUT_PWD/../../../bin/Sultan.app/Contents/Frameworks
} else {
    DESTDIR = ../../../bin
}

win32 {
    DEFINES += AUTO_INITIALIZE_EASYLOGGINGPP
    DEFINES += ELPP_AS_DLL
}

DEFINES += ELPP_QT_LOGGING

QT       += core

CONFIG += c++11

SOURCES += \
	easylogging++.cc

HEADERS += \
	easylogging++.h
