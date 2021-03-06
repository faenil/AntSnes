TEMPLATE = app
TARGET = AntSnes
QT += core \
    gui \
    opengl
HEADERS += buttonwidget.h \
	dpadwidget.h \
	QRemoteControlKeys.h \
	aboutdialog.h \
    controlsettings.h \
    videosettings.h \
    AntAudio.h \
    audiosettings.h \
    keyconfigdialog.h \
    viewcontroller.h \
    emusettings.h \
    symb_adaptation.h \
    AntSettings.h \
    snescontroller.h \
    AntSnesQt.h \
    middlebuttons.h
    
SOURCES += buttonwidget.cpp \
	dpadwidget.cpp \
	QRemoteControlKeys.cpp \
	aboutdialog.cpp \
    controlsettings.cpp \
    videosettings.cpp \
    AntAudio.cpp \
    audiosettings.cpp \
    keyconfigdialog.cpp \
    viewcontroller.cpp \
    emusettings.cpp \
    debug.cpp \
    symb_adaptation.cpp \
    snescontroller.cpp \
    main.cpp \
    AntSnesQt.cpp \
    AntBlit.cpp \
    middlebuttons.cpp
    
FORMS += aboutdialog.ui \
    controlsettings.ui \
    videosettings.ui \
    keyconfigdialog.ui \
    audiosettings.ui \
    emusettings.ui \
    AntSnesQt.ui

RESOURCES += atnresources.qrc

symbian:LIBS += -lantsnes.lib \
    -lscdv \
    -lws32 \
    -lcone \
    -lbitgdi \
    -lmediaclientaudiostream \
    -leikcore \
    -lavkon \
    -lremconcoreapi \
    -lremconinterfacebase \
    -lecom \
    -lmmfcontrollerframework
    
 symbian:TARGET.UID3 \
    = \
    0xE4270701
symbian:TARGET.EPOCHEAPSIZE = 0x200000 \
    0x1000000

symbian: TARGET.CAPABILITY = UserEnvironment
symbian:ICON = gfx/AntSnes_44.svg
symbian:INCLUDEPATH += ../snes9x_asm_optimized

OTHER_FILES += summelistyle.qss
