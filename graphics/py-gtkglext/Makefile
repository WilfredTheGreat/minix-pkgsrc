# $NetBSD: Makefile,v 1.21 2012/04/08 19:08:58 wiz Exp $
#

DISTNAME=	pygtkglext-1.1.0
PKGNAME=	${PYPKGPREFIX}-pygtkglext-1.1.0
PKGREVISION=	11
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkglext/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gtkglext.sourceforge.net/
COMMENT=	Python bindings for gtkglext

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
CONFIGURE_ENV+=	PYTHON=${PYTHONBIN}
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config
PYDISTUTILSPKG=	yes

PKGCONFIG_OVERRIDE+=	pygtkglext.pc.in

.include "../../lang/python/extension.mk"
.include "../../x11/py-gtk2/buildlink3.mk"
.include "../../graphics/gtkglext/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
