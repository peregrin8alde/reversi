TARGETDIR = _build
SRCDIR = src
COMMANDS = ${SRCDIR}/command/start.sh
MODELS = ${SRCDIR}/model/core/ReversiModel.sh
VIEWS = ${SRCDIR}/view/title/resource/Title.txt \
        ${SRCDIR}/view/title/TitleView.sh
BINSRC = ${COMMANDS}
LIBSRC = ${MODELS} ${VIEWS}
SRCS = ${BINSRC} ${LIBSRC}


all : ${SRCS} TitleViewModel
	mkdir -p ${TARGETDIR}
	mkdir -p ${TARGETDIR}/bin
	cp -f ${BINSRC} ${TARGETDIR}/bin/
	chmod +x ${TARGETDIR}/bin/*
	ls -lha ${TARGETDIR}/bin/
	mkdir -p ${TARGETDIR}/lib
	cp -f ${LIBSRC} ${TARGETDIR}/lib/
	chmod +x ${TARGETDIR}/lib/*
	ls -lha ${TARGETDIR}/lib/

TitleViewModel : ${SRCDIR}/viewmodel/title/src/TitleViewModel.sh
	cd ${SRCDIR}/viewmodel/title && ${MAKE}
	mkdir -p ${TARGETDIR}/lib
	cp -rf ${SRCDIR}/viewmodel/title/${TARGETDIR}/lib/* ${TARGETDIR}/lib/


.PHONY : clean

clean :
	cd ${SRCDIR}/viewmodel/title && ${MAKE} clean
	rm -rf ${TARGETDIR}
