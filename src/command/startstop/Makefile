TARGETDIR = _build
SRCDIR = src

export BATS_LIB_PATH = /usr/local/lib/bats

.PHONY : all
all : bin lib test

bin : ${SRCDIR}/StartCmd.sh
	mkdir -p ${TARGETDIR}/bin
	cp -f ${SRCDIR}/StartCmd.sh ${TARGETDIR}/bin/
	chmod +x ${TARGETDIR}/bin/*

lib : ${SRCDIR}/LibStartCmd.sh
	mkdir -p ${TARGETDIR}/lib
	cp -f ${SRCDIR}/LibStartCmd.sh ${TARGETDIR}/lib/
	chmod +x ${TARGETDIR}/lib/*

.PHONY : test clean
test :
	bats --tap test/TestLibStartCmd.bats
	bats --tap test/TestStartCmd.bats

clean : 
	rm -rf ${TARGETDIR}

