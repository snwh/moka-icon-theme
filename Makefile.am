EXTRA_DIST = \
	Moka \
	COPYING \
	AUTHORS \
	README.md

xsessiondir = $(datadir)/xsessions

themedir = $(datadir)/icons

install-data-hook:
	$(MKDIR_P) $(DESTDIR)/usr/share/icons
	cp -R Moka $(DESTDIR)/usr/share/icons/.

uninstall-hook:
	test -e $(DESTDIR)/usr/share/icons/Moka && rm -rfv $(DESTDIR)/usr/share/icons/Moka
