export TARGETDIR ?= _build
SRCDIR = src

REVERSI_MODEL=ReversiModel

export BATS_LIB_PATH = /usr/local/lib/bats

.PHONY : all
all : compile test

${TARGETDIR}/lib/${REVERSI_MODEL}.sh : ${SRCDIR}/lib/${REVERSI_MODEL}.sh
	mkdir -p $(@D)
	cp -f $< $@
	chmod +x $@

${TARGETDIR}/report/${REVERSI_MODEL}.xml : test/Test${REVERSI_MODEL}.bats ${TARGETDIR}/lib/${REVERSI_MODEL}.sh
	mkdir -p $(@D)
	bats --formatter junit $< > $@


.PHONY : compile test clean
compile : ${TARGETDIR}/lib/${REVERSI_MODEL}.sh

test : ${TARGETDIR}/report/${REVERSI_MODEL}.xml

clean : 
	rm -rf ${TARGETDIR}

