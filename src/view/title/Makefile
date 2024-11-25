TARGETDIR = _build
SRCDIR = src

export BATS_LIB_PATH = /usr/local/lib/bats

.PHONY : all
all : compile test

lib : ${SRCDIR}/TitleView.sh ${SRCDIR}/resource/Title.txt
	mkdir -p ${TARGETDIR}/lib
	cp -f ${SRCDIR}/TitleView.sh ${TARGETDIR}/lib/
	cp -f ${SRCDIR}/resource/Title.txt ${TARGETDIR}/lib/


.PHONY : init compile test clean
init : 
	mkdir -p ${TARGETDIR}

compile : lib

test : compile
	bats --tap test/TestTitleView.bats

clean : 
	rm -rf ${TARGETDIR}

