# $NetBSD$
#

DISTNAME=	ae_fonts_mono
PKGNAME=	ae-mono-ttf-${VERSION}
CATEGORIES=	fonts
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=arabeyes/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://www.arabeyes.org/project.php?proj=Khotot
COMMENT=	Collection of PCF fonts that include Arabic glyphs

PKG_DESTDIR_SUPPORT=	user-destdir

NO_BUILD=	yes
NO_CONFIGURE=	yes
USE_LANGUAGES=	# none
VERSION=	1.0

FONTS_DIRS.x11=		${PREFIX}/lib/X11/fonts/ae-mono-ttf

INSTALLATION_DIRS=	lib/X11/fonts/ae-mono-ttf

do-install:
	${INSTALL_DATA} ${WRKSRC}/10x21.bdf ${DESTDIR}${FONTS_DIRS.x11}
	${INSTALL_DATA} ${WRKSRC}/10x21.pcf ${DESTDIR}${FONTS_DIRS.x11}

.include "../../mk/bsd.pkg.mk"
