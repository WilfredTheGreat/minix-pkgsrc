# $NetBSD: Makefile,v 1.7 2011/09/24 13:14:16 joerg Exp $
#

DISTNAME=		xmag-1.0.4
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_XORG:=app/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		joerg@NetBSD.org
HOMEPAGE=		http://xorg.freedesktop.org/
COMMENT=		Magnify parts of the screen

PKG_DESTDIR_SUPPORT=	user-destdir

CONFIGURE_ENV+=		APP_MAN_SUFFIX=1
GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config

MAKE_FLAGS+=		appdefaultdir=${PREFIX}/lib/X11/app-defaults

.include "../../x11/libXaw/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
