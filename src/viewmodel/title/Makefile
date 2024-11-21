TARGETDIR = _build
SRCDIR = src

export BATS_LIB_PATH = /usr/local/lib/bats

lib : ${SRCDIR}/TitleViewModel.sh test
	mkdir -p ${TARGETDIR}/lib
	cp -f ${SRCDIR}/TitleViewModel.sh ${TARGETDIR}/lib/


.PHONY : test clean

test :
	bats --tap test/TestTitleViewModel.bats

clean : 
	rm -rf ${TARGETDIR}

