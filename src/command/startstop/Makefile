export TARGETDIR ?= _build
SRCDIR = src

STARTCMD=bin/StartCmd.sh
LIB_STARTCMD=lib/LibStartCmd.sh

export BATS_LIB_PATH ?= /usr/local/lib/bats

.PHONY : all
all : compile test

${TARGETDIR}/${STARTCMD} : ${SRCDIR}/${STARTCMD}
	mkdir -p $(@D)
	cp -f $< $@
	chmod +x $@

${TARGETDIR}/${LIB_STARTCMD} : ${SRCDIR}/${LIB_STARTCMD}
	mkdir -p $(@D)
	cp -f $< $@
	chmod +x $@

.PHONY : compile test clean
compile : ${TARGETDIR}/${STARTCMD} ${TARGETDIR}/${LIB_STARTCMD}

test : compile
	bats --tap test/TestLibStartCmd.bats
	bats --tap test/TestStartCmd.bats

clean : 
	rm -rf ${TARGETDIR}

