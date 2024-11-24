TARGETDIR = _build
SRCDIR = src

export BATS_LIB_PATH = /usr/local/lib/bats

lib : ${SRCDIR}/TitleView.sh ${SRCDIR}/resource/Title.txt test
	mkdir -p ${TARGETDIR}/lib
	cp -f ${SRCDIR}/TitleView.sh ${TARGETDIR}/lib/
	cp -f ${SRCDIR}/resource/Title.txt ${TARGETDIR}/lib/


.PHONY : test clean

test :
	bats --tap test/TestTitleView.bats

clean : 
	rm -rf ${TARGETDIR}

