BUILDDIR = ./build
DESTDIR = ./build

all: build

build: clean
	mkdir -p "$(BUILDDIR)/.rockbox/themes"
	mkdir -p "$(BUILDDIR)/.rockbox/wps"
	cp bigbleydh.cfg "$(BUILDDIR)/.rockbox/themes/bigbleydh-car.cfg"
	cp bigbleydh.sbs "$(BUILDDIR)/.rockbox/wps/bigbleydh-car.sbs"
	cp bigbleydh.wps "$(BUILDDIR)/.rockbox/wps/bigbleydh-car.wps"
	cp -r bigbleydh "$(BUILDDIR)/.rockbox/wps/bigbleydh-car"
	sed -i '/^#/d' "$(BUILDDIR)/.rockbox/themes/bigbleydh-car.cfg"
	sed -i '/^#/d' "$(BUILDDIR)/.rockbox/wps/bigbleydh-car.sbs"
	sed -i '/^#/d' "$(BUILDDIR)/.rockbox/wps/bigbleydh-car.wps"
	sed -i 's/bigbleydh/bigbleydh-car/g' "$(BUILDDIR)/.rockbox/themes/bigbleydh-car.cfg"

install: build
	cp -r "$(BUILDDIR)/.rockbox/themes" "$(DESTDIR)"
	cp -r "$(BUILDDIR)/.rockbox/wps" "$(DESTDIR)"

zip: build
	rm -f "$(BUILDDIR)/bigbleydh-car.zip"
	cd "$(BUILDDIR)" && zip -r bigbleydh-car.zip .rockbox

clean:
	rm -rf "$(BUILDDIR)/.rockbox"

.PHONY: all build clean install zip
