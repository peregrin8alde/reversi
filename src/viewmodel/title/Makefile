export TARGETDIR ?= _build
SRCDIR = src

TITLE_VIEWMODEL=TitleViewModel

export BATS_LIB_PATH ?= /usr/local/lib/bats

.PHONY : all
all : compile test

${TARGETDIR}/lib/${TITLE_VIEWMODEL}.sh : ${SRCDIR}/lib/${TITLE_VIEWMODEL}.sh
	mkdir -p $(@D)
	cp -f $< $@
	chmod +x $@

${TARGETDIR}/report/${TITLE_VIEWMODEL}.xml : test/Test${TITLE_VIEWMODEL}.bats ${TARGETDIR}/lib/${TITLE_VIEWMODEL}.sh
	mkdir -p $(@D)
	bats --formatter junit $< > $@


.PHONY : compile test clean
compile : ${TARGETDIR}/lib/${TITLE_VIEWMODEL}.sh 

test : ${TARGETDIR}/report/${TITLE_VIEWMODEL}.xml

clean : 
	rm -rf ${TARGETDIR}

