# $NetBSD: Makefile,v 1.3 2012/06/14 07:44:52 sbd Exp $

DISTNAME=	superkaramba-${_KDE_VERSION}
CATEGORIES=	misc
COMMENT=	KDE desktop widgets

.include "../../meta-pkgs/kde4/Makefile.kde4"

#make sure cmake picks up the same Python version as pkgsrc
CMAKE_ARGS+=	-DPYTHON_EXECUTABLE:FILEPATH=${PYTHONBIN}

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../graphics/qimageblitz/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
