TARGETDIR = _build
SRCDIR = src

export BATS_LIB_PATH = /usr/local/lib/bats

lib : ${SRCDIR}/ReversiModel.sh test
	mkdir -p ${TARGETDIR}/lib
	cp -f ${SRCDIR}/ReversiModel.sh ${TARGETDIR}/lib/


.PHONY : test clean

test :
	bats --tap test/TestReversiModel.bats

clean : 
	rm -rf ${TARGETDIR}

