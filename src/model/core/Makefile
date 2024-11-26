export TARGETDIR = _build
SRCDIR = src

export BATS_LIB_PATH = /usr/local/lib/bats

.PHONY : all
all : compile test

lib : ${SRCDIR}/ReversiModel.sh
	mkdir -p ${TARGETDIR}/lib
	cp -f ${SRCDIR}/ReversiModel.sh ${TARGETDIR}/lib/


.PHONY : init compile test clean
init : 
	mkdir -p ${TARGETDIR}

compile : lib

test : compile
	bats --tap test/TestReversiModel.bats

clean : 
	rm -rf ${TARGETDIR}

