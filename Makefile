export TARGETDIR ?= $(CURDIR)/_build
SRCDIR = src

COMMAND_STARTSTOP_DIR = ${SRCDIR}/command/startstop
MODEL_CORE_DIR = ${SRCDIR}/model/core
VIEW_TITLE_DIR = ${SRCDIR}/view/title
VIEWMODEL_TITLE_DIR = ${SRCDIR}/viewmodel/title

.PHONY : all
all : compile test
	echo "finish"

.PHONY : init compile test clean
init : 
	mkdir -p ${TARGETDIR}

compile : init
	cd ${COMMAND_STARTSTOP_DIR} && ${MAKE} compile
	cd ${MODEL_CORE_DIR} && ${MAKE} compile
	cd ${VIEW_TITLE_DIR} && ${MAKE} compile
	cd ${VIEWMODEL_TITLE_DIR} && ${MAKE} compile

test : compile
	export BASE_DIR=${TARGETDIR}
	cd ${COMMAND_STARTSTOP_DIR} && ${MAKE} test
	cd ${MODEL_CORE_DIR} && ${MAKE} test
	cd ${VIEW_TITLE_DIR} && ${MAKE} test
	cd ${VIEWMODEL_TITLE_DIR} && ${MAKE} test

clean :
	cd ${COMMAND_STARTSTOP_DIR} && ${MAKE} clean
	cd ${MODEL_CORE_DIR} && ${MAKE} clean
	cd ${VIEW_TITLE_DIR} && ${MAKE} clean
	cd ${VIEWMODEL_TITLE_DIR} && ${MAKE} clean
	rm -rf ${TARGETDIR}
