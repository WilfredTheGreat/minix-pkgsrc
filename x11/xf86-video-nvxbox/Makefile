# $NetBSD: Makefile,v 1.5 2010/09/14 11:03:14 wiz Exp $
#

DISTNAME=	xf86-video-nvxbox-${VER}
PKGREVISION=	3
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_BACKUP}

MAINTAINER=	joerg@NetBSD.org
COMMENT=	Modular Xorg NVidia Xbox video driver

PKG_DESTDIR_SUPPORT=	user-destdir
BROKEN=		Doesn't build with modular Xorg server 1.7.x

VER=		20070409
WRKSRC=		${WRKDIR}/${DISTNAME:S/-${VER}//}

USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config

.include "../../x11/modular-xorg-server/buildlink3.mk"
.include "../../x11/randrproto/buildlink3.mk"
.include "../../x11/renderproto/buildlink3.mk"
.include "../../x11/videoproto/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"
.include "../../x11/glproto/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
