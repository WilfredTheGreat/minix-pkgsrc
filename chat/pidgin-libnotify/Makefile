# $NetBSD: Makefile,v 1.16 2012/04/27 12:31:36 obache Exp $
#

DISTNAME=	pidgin-libnotify-0.14
PKGREVISION=	16
CATEGORIES=	chat
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gaim-libnotify/}

PKG_DESTDIR_SUPPORT=	user-destdir

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gaim-libnotify.sourceforge.net/
COMMENT=	Pidgin plugin that adds popup support

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config gmake perl msgfmt intltool

.include "../../chat/libpurple/buildlink3.mk"
.include "../../chat/pidgin/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
