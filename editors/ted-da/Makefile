# $NetBSD: Makefile,v 1.14 2007/06/08 18:41:21 wiz Exp $

DISTNAME=	Ted_da_DK
PKGNAME=	ted-da-2.16
PKGREVISION=	1
CATEGORIES=	editors
MASTER_SITES=	ftp://ftp.nluug.nl/pub/editors/ted/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.nllgg.nl/Ted/
COMMENT=	Danish spelling dictionary for the Ted word processor

DEPENDS+=	ted>=2.6:../../editors/ted

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}
USE_X11BASE=	YES

DIST_SUBDIR=	Ted-2.16
NO_BUILD=	YES

INSTALLATION_DIRS=	share/Ted/ind

do-install:
	${INSTALL_DATA} ${WRKSRC}/ind/Danish.ind \
		${DESTDIR}${PREFIX}/share/Ted/ind

.include "../../mk/bsd.pkg.mk"
