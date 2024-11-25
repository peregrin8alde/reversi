TARGETDIR = _build
SRCDIR = src

COMMAND_STARTSTOP_DIR = ${SRCDIR}/command/startstop
MODEL_CORE_DIR = ${SRCDIR}/model/core
VIEW_TITLE_DIR = ${SRCDIR}/view/title
VIEWMODEL_TITLE_DIR = ${SRCDIR}/viewmodel/title


all : init CommandStartStop ModelCore ViewTitle ViewModelTitle
	echo "finish"

CommandStartStop : ${COMMAND_STARTSTOP_DIR}/src/*
	cd ${COMMAND_STARTSTOP_DIR} && ${MAKE} compile
	cp -rpf ${COMMAND_STARTSTOP_DIR}/${TARGETDIR}/* ${TARGETDIR}/

ModelCore : ${MODEL_CORE_DIR}/src/*
	cd ${MODEL_CORE_DIR} && ${MAKE} compile
	cp -rpf ${MODEL_CORE_DIR}/${TARGETDIR}/* ${TARGETDIR}/

ViewTitle : ${VIEW_TITLE_DIR}/src/*
	cd ${VIEW_TITLE_DIR} && ${MAKE} compile
	cp -rpf ${VIEW_TITLE_DIR}/${TARGETDIR}/* ${TARGETDIR}/

ViewModelTitle : ${VIEWMODEL_TITLE_DIR}/src/*
	cd ${VIEWMODEL_TITLE_DIR} && ${MAKE} compile
	cp -rpf ${VIEWMODEL_TITLE_DIR}/${TARGETDIR}/* ${TARGETDIR}/


.PHONY : init compile test clean

init : 
	mkdir -p ${TARGETDIR}

compile : init CommandStartStop ModelCore ViewTitle ViewModelTitle

test :
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
