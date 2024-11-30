export TARGETDIR ?= _build
SRCDIR = src

TITLE_VIEW=TitleView
RESOURCE_TITLE_TXT=resource/Title.txt

export BATS_LIB_PATH ?= /usr/local/lib/bats

.PHONY : all
all : compile test

${TARGETDIR}/lib/${TITLE_VIEW}.sh : ${SRCDIR}/lib/${TITLE_VIEW}.sh
	mkdir -p $(@D)
	cp -f $< $@
	chmod +x $@

${TARGETDIR}/${RESOURCE_TITLE_TXT} : ${SRCDIR}/${RESOURCE_TITLE_TXT}
	mkdir -p $(@D)
	cp -f $< $@

${TARGETDIR}/report/${TITLE_VIEW}.xml : test/Test${TITLE_VIEW}.bats ${TARGETDIR}/lib/${TITLE_VIEW}.sh ${TARGETDIR}/${RESOURCE_TITLE_TXT}
	mkdir -p $(@D)
	bats --formatter junit $< > $@


.PHONY : compile test clean
compile : ${TARGETDIR}/lib/${TITLE_VIEW}.sh ${TARGETDIR}/${RESOURCE_TITLE_TXT}

test : ${TARGETDIR}/report/${TITLE_VIEW}.xml

clean : 
	rm -rf ${TARGETDIR}

