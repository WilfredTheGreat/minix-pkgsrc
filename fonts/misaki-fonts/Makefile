# $NetBSD: Makefile,v 1.3 2011/05/08 11:00:18 ryoon Exp $

DISTNAME=		misaki_bdf_b11a
PKGNAME=		${DISTNAME:S/misaki_bdf_b/misaki-fonts-0beta/}
CATEGORIES=		fonts x11 japanese
MASTER_SITES=		http://www.geocities.jp/littlimi/arc/misaki/

MAINTAINER=		ryoon@NetBSD.org
HOMEPAGE=		http://www.geocities.jp/littlimi/misaki.htm
COMMENT=		8x8 dots X11 bitmap font for JIS X 0208
LICENSE=		mplusfont

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=			${WRKDIR}
USE_X11BASE=		YES
NO_CONFIGURE=		YES
USE_TOOLS+=		bdftopcf gzip

DOCSDIR=		${PREFIX}/share/doc/${PKGBASE}
FONTDIR=		${PREFIX}/lib/X11/fonts/local
FONTS_DIRS.x11=		${FONTDIR}

INSTALLATION_DIRS=	lib/X11/fonts/local \
			${DOCSDIR}

INSTALL_FONTS=		misaki_gothic.bdf \
			misaki_mincho.bdf \
			misaki_4x8_iso8859.bdf \
			misaki_4x8_jisx0201.bdf
INSTALL_DOCS=		misaki_bdf.txt \
			readme.txt

do-build:
.for filename in ${INSTALL_FONTS}
	${TOOLS_PATH.bdftopcf}  -o ${WRKSRC}/${filename:S/bdf/pcf/} ${WRKSRC}/${filename}
	${GZIP_CMD} ${WRKSRC}/${filename:S/bdf/pcf/}
.endfor

do-install:
.for filename in ${INSTALL_DOCS}
	${INSTALL_DATA} ${WRKSRC}/${filename} ${DESTDIR}${DOCSDIR}
.endfor
.for filename in ${INSTALL_FONTS}
	${INSTALL_DATA} ${WRKSRC}/${filename:S/bdf/pcf.gz/} ${DESTDIR}${FONTDIR}
.endfor

.include "../../mk/bsd.pkg.mk"
