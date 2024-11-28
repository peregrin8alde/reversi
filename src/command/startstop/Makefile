export TARGETDIR ?= _build
SRCDIR = src

STARTCMD=StartCmd
LIB_STARTCMD=LibStartCmd

export BATS_LIB_PATH ?= /usr/local/lib/bats

.PHONY : all
all : compile test

${TARGETDIR}/bin/${STARTCMD}.sh : ${SRCDIR}/bin/${STARTCMD}.sh
	mkdir -p $(@D)
	cp -f $< $@
	chmod +x $@

${TARGETDIR}/lib/${LIB_STARTCMD}.sh : ${SRCDIR}/lib/${LIB_STARTCMD}.sh
	mkdir -p $(@D)
	cp -f $< $@
	chmod +x $@

${TARGETDIR}/report/${STARTCMD}.xml : test/Test${STARTCMD}.bats ${TARGETDIR}/bin/${STARTCMD}.sh
	mkdir -p $(@D)
	bats --formatter junit $< > $@

${TARGETDIR}/report/${LIB_STARTCMD}.xml : test/Test${LIB_STARTCMD}.bats ${TARGETDIR}/lib/${LIB_STARTCMD}.sh
	mkdir -p $(@D)
	bats --formatter junit $< > $@


.PHONY : compile test clean
compile : ${TARGETDIR}/bin/${STARTCMD}.sh ${TARGETDIR}/lib/${LIB_STARTCMD}.sh

test : ${TARGETDIR}/report/${STARTCMD}.xml ${TARGETDIR}/report/${LIB_STARTCMD}.xml

clean : 
	rm -rf ${TARGETDIR}

