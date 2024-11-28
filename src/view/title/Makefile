export TARGETDIR ?= _build
SRCDIR = src

LIB_TITLE_VIEW=lib/TitleView.sh
RESOURCE_TITLE_TXT=resource/Title.txt

export BATS_LIB_PATH ?= /usr/local/lib/bats

.PHONY : all
all : compile test

${TARGETDIR}/${LIB_TITLE_VIEW} : ${SRCDIR}/${LIB_TITLE_VIEW}
	mkdir -p $(@D)
	cp -f $< $@
	chmod +x $@

${TARGETDIR}/${RESOURCE_TITLE_TXT} : ${SRCDIR}/${RESOURCE_TITLE_TXT}
	mkdir -p $(@D)
	cp -f $< $@


.PHONY : compile test clean
compile : ${TARGETDIR}/${LIB_TITLE_VIEW} ${TARGETDIR}/${RESOURCE_TITLE_TXT}

test : compile
	bats --tap test/TestTitleView.bats

clean : 
	rm -rf ${TARGETDIR}

