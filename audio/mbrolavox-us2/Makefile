# $NetBSD: Makefile,v 1.20 2009/05/02 12:55:57 zafer Exp $

DISTNAME=	us2-980812
PKGNAME=	mbrolavox-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	audio
MASTER_SITES=	http://tcts.fpms.ac.be/synthesis/mbrola/dba/us2/
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://tcts.fpms.ac.be/synthesis/mbrola/
COMMENT=	American English male voice for MBROLA
LICENSE=	no-commercial-use

DEPENDS+=	mbrola-301h{,nb[0-9]*}:../../audio/mbrola

USE_TOOLS+=	pax

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}
NO_BUILD=	yes

MHOME=		${PREFIX}/share/mbrola/voices

post-extract:
	${CHMOD} -R a+r ${WRKSRC}
	${FIND} ${WRKSRC} -type d -print | ${XARGS} ${CHMOD} 755

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${MHOME}
	cd ${WRKSRC} && pax -rw us2 ${DESTDIR}${MHOME}

.include "../../mk/bsd.pkg.mk"
