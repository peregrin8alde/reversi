TARGETDIR     = _build

SRCDIR     = src
COMMANDS   = $(SRCDIR)/command/start.sh
MODELS     = $(SRCDIR)/model/core/ReversiModel.sh
VIEWS      = $(SRCDIR)/view/title/resource/Title.txt \
	       $(SRCDIR)/view/title/TitleView.sh
VIEWMODELS = $(SRCDIR)/viewmodel/title/src/TitleViewModel.sh
BINSRC     = $(COMMANDS)
LIBSRC     = $(MODELS) $(VIEWS) $(VIEWMODELS)
SRC	= $(BINSRC) $(LIBSRC)


all : $(SRCS)
	mkdir -p ${TARGETDIR}
	mkdir -p ${TARGETDIR}/bin
	cp -f $(BINSRC) ${TARGETDIR}/bin/
	chmod +x ${TARGETDIR}/bin/*
	ls -lha ${TARGETDIR}/bin/
	mkdir -p ${TARGETDIR}/lib
	cp -f $(LIBSRC) ${TARGETDIR}/lib/
	chmod +x ${TARGETDIR}/lib/*
	ls -lha ${TARGETDIR}/lib/

.PHONY : clean
clean :
	rm -rf ${TARGETDIR}
