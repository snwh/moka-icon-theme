
icon_in_files = $(shell SRCDIR="$(srcdir)"; for i in `find $$SRCDIR -name "*.svg"`; do printf "$$i "; done)

if ALLOW_RENDERING
render-png: $(icon_in_files) Makefile
	for file in $(icon_in_files); do \
		for size in $(render_sizes); do \
			$(ICONTOOL_RENDER) -s $$size -o $(top_builddir)/$(SVGOUTDIR) $$file >/dev/null; \
		done; \
	done

else
render-png: $(icon_in_files) Makefile
	if test "x$(top_srcdir)" != "x$(top_builddir)"; then \
		cp -a $(top_srcdir)/$(SVGOUTDIR) $(top_builddir)/$(SVGOUTDIR); \
	fi

endif

$(render_sizes): Makefile

render: render-png

all-local: render

install-data-local:
	for size in $(render_sizes); do \
		for file in `cd $(top_builddir)/$(SVGOUTDIR)/$$size; find . -name "*.png"`; do \
			context="`dirname $$file`"; \
			$(mkdir_p) $(DESTDIR)$(themedir)/$$size/$$context; \
			$(install_sh_DATA) $(top_srcdir)/$(SVGOUTDIR)/$$size/$$file $(DESTDIR)$(themedir)/$$size/$$file; \
		done; \
	done
	for file in `cd $(top_builddir)/$(SVGOUTDIR)/scalable; find . -name "*.svg"`; do \
		context="`dirname $$file`"; \
		$(mkdir_p) $(DESTDIR)$(themedir)/scalable/$$context; \
		$(install_sh_DATA) $(top_srcdir)/$(SVGOUTDIR)/scalable/$$file $(DESTDIR)$(themedir)/scalable/$$file; \
	done

uninstall-local:
	for size in $(render_sizes); do \
		for file in `cd $(top_builddir)/$(SVGOUTDIR)/$$size; find . -name "*.png"`; do \
			rm -f $(DESTDIR)$(themedir)/$$size/$$file; \
		done; \
	done

EXTRA_DIST =			\
	$(icon_in_files)


MAINTAINERCLEANFILES =		\
	*~			\
	Makefile.in		\
	$(icon_cache)

-include $(top_srcdir)/git.mk
