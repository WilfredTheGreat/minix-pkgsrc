# $NetBSD: Makefile,v 1.17 2012/02/06 12:41:21 wiz Exp $
#

DISTNAME=	gtklp-1.2.7
PKGREVISION=	11
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtklp/}
EXTRACT_SUFX=	.src.tar.gz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gtklp.sourceforge.net/
COMMENT=	CUPS frontend using GTK

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		pkg-config msgfmt
MAKE_FLAGS+=		install_sh=${WRKSRC}/install-sh

.include "../../devel/glib2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../print/cups/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
