export TARGETDIR ?= _build
SRCDIR = src

LIB_REVERSI_MODEL=lib/ReversiModel.sh

export BATS_LIB_PATH = /usr/local/lib/bats

.PHONY : all
all : compile test

${TARGETDIR}/${LIB_REVERSI_MODEL} : ${SRCDIR}/${LIB_REVERSI_MODEL}
	mkdir -p $(@D)
	cp -f $< $@
	chmod +x $@


.PHONY : compile test clean
compile : ${TARGETDIR}/${LIB_REVERSI_MODEL}

test : compile
	bats --tap test/TestReversiModel.bats

clean : 
	rm -rf ${TARGETDIR}

