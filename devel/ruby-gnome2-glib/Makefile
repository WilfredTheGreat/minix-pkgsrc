# $NetBSD: Makefile,v 1.18 2012/03/03 00:12:01 wiz Exp $
#

PKGNAME=		${RUBY_PKGPREFIX}-gnome2-glib-${VERSION}
COMMENT=		Ruby binding of GLib-2.x
CATEGORIES=		devel

CONFLICTS+=		ruby-gnome2-glib-[0-9]*
CONFLICTS+=		ruby[0-9][0-9]-gnome2-glib-[0-9]*

PKG_DESTDIR_SUPPORT=	user-destdir

RUBY_EXTCONF_SUBDIRS=	glib2

DEPENDS+=		${RUBY_PKGPREFIX}-pkg-config-[0-9]*:../../devel/ruby-pkg-config

do-test:
	${RUN} cd ${WRKSRC}/glib2/test; ${SETENV} ${TEST_ENV} ${RUBY} run-test.rb

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/ruby-pkg-config/tool.mk"
.include "../../meta-pkgs/ruby-gnome2/Makefile.common"
