# $NetBSD: Makefile,v 1.7 2012/04/22 16:11:13 wiz Exp $
#

DISTNAME=	libplist-1.8
PKGREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	http://www.libimobiledevice.org/downloads/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.libimobiledevice.org/
COMMENT=	Handle Apple Binary and XML Property Lists
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

USE_CMAKE=	yes
USE_TOOLS+=	gmake pkg-config
USE_LANGUAGES=	c c++
MAKE_JOBS_SAFE=	no

PKGCONFIG_OVERRIDE+=	libplist++.pc.in
PKGCONFIG_OVERRIDE+=	libplist.pc.in
PY_PATCHPLIST=		yes

.include "../../textproc/libxml2/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../devel/swig/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
