# $NetBSD: Makefile,v 1.13 2012/06/01 00:14:24 dholland Exp $
#

DISTNAME=		ywho-1.3
CATEGORIES=		net
MASTER_SITES=		# ftp://ftp.gw.com/pub/people/kim/

MAINTAINER=		kim@tac.nyc.ny.us
COMMENT=		Who, users, uptime on clients in a sun-RPC network

PKG_DESTDIR_SUPPORT=	user-destdir

NO_CONFIGURE=		yes
MAKE_FLAGS+=		DEST=${DESTDIR}${PREFIX} PKGMANDIR=${PKGMANDIR}
MAKE_FLAGS+=		EXTRA_LIBS=${LIBS:Q}
BUILD_TARGET=		all

LIBS.SunOS+=		-lnsl

INSTALL_TARGET=		install install.man
INSTALLATION_DIRS+=	bin ${PKGMANDIR}/man1

.include "../../mk/bsd.pkg.mk"
