export TARGETDIR ?= _build
SRCDIR = src

LIB_TITLE_VIEWMODEL=lib/TitleViewModel.sh

export BATS_LIB_PATH ?= /usr/local/lib/bats

.PHONY : all
all : compile test

${TARGETDIR}/${LIB_TITLE_VIEWMODEL} : ${SRCDIR}/${LIB_TITLE_VIEWMODEL}
	mkdir -p $(@D)
	cp -f $< $@
	chmod +x $@


.PHONY : compile test clean
compile : ${TARGETDIR}/${LIB_TITLE_VIEWMODEL}

test : compile
	bats --tap test/TestTitleViewModel.bats

clean : 
	rm -rf ${TARGETDIR}

