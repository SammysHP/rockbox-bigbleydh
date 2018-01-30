BUILDDIR = ./build
DESTDIR = ./build

all: build

build:
	mkdir -p "$(BUILDDIR)/.rockbox/themes"
	mkdir -p "$(BUILDDIR)/.rockbox/wps"
	cp bigbleydh.cfg "$(BUILDDIR)/.rockbox/themes"
	cp bigbleydh.sbs "$(BUILDDIR)/.rockbox/wps"
	cp bigbleydh.wps "$(BUILDDIR)/.rockbox/wps"
	cp -r bigbleydh "$(BUILDDIR)/.rockbox/wps"
	sed -i '/^#/d' "$(BUILDDIR)/.rockbox/themes/bigbleydh.cfg"
	sed -i '/^#/d' "$(BUILDDIR)/.rockbox/wps/bigbleydh.sbs"
	sed -i '/^#/d' "$(BUILDDIR)/.rockbox/wps/bigbleydh.wps"

install: build
	cp -r "$(BUILDDIR)/.rockbox/themes" "$(DESTDIR)"
	cp -r "$(BUILDDIR)/.rockbox/wps" "$(DESTDIR)"

zip: build
	rm -f "$(BUILDDIR)/bigbleydh.zip"
	cd "$(BUILDDIR)" && zip -r bigbleydh.zip .rockbox

.PHONY: all build install zip
