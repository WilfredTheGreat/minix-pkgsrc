# $NetBSD: Makefile,v 1.2 2012/06/14 07:44:48 sbd Exp $

DISTNAME=	kolourpaint-${_KDE_VERSION}
CATEGORIES=	graphics
COMMENT=	KDE paint program

.include "../../meta-pkgs/kde4/Makefile.kde4"

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../graphics/qimageblitz/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
