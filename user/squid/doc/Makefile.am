#
#  Makefile for the Squid Object Cache server
#
#  $Id: Makefile.am,v 1.1.2.7 2005/05/09 01:35:59 hno Exp $
#
#  Uncomment and customize the following to suit your needs:
#

DEFAULT_CONFIG_FILE = $(sysconfdir)/squid.conf
DEFAULT_CACHEMGR_CONFIG = $(sysconfdir)/cachemgr.conf
DEFAULT_MIME_TABLE      = $(sysconfdir)/mime.conf
DEFAULT_ERROR_DIR       = $(datadir)/errors/@ERR_DEFAULT_LANGUAGE@

SUBSTITUTE=sed "\
	s%@DEFAULT_CONFIG_FILE@%$(DEFAULT_CONFIG_FILE)%g;\
	s%@DEFAULT_CACHEMGR_CONFIG@%$(DEFAULT_CACHEMGR_CONFIG)%g;\
	s%@DEFAULT_ERROR_DIR@%$(DEFAULT_ERROR_DIR)%g;\
	s%@DEFAULT_MIME_TABLE@%$(DEFAULT_MIME_TABLE)%g;\
	"

squid.8: $(srcdir)/squid.8.in Makefile
	$(SUBSTITUTE) < $(srcdir)/squid.8.in > $@

cachemgr.cgi.8: $(srcdir)/cachemgr.cgi.8.in Makefile
	$(SUBSTITUTE) < $(srcdir)/cachemgr.cgi.8.in > $@

man_MANS = \
	squid.8 \
	cachemgr.cgi.8

EXTRA_DIST = \
	squid.8.in \
	cachemgr.cgi.8.in \
	debug-sections.txt

CLEANFILES = \
	squid.8 \
	cachemgr.cgi.8
