# $NetBSD: Makefile,v 1.3 2006/03/04 21:30:38 jlam Exp $

DISTNAME=	hairyeyeball-1.1
PKGREVISION=	1
CATEGORIES=	security sysutils
MASTER_SITES=	http://www.blafasel.org/~floh/he/releases/
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://blafasel.org/~floh/he/
COMMENT=	Systrace policy examples

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/1.1

NO_BUILD=	YES

INSTALLATION_DIRS+=	share/examples/systrace-policies

do-install:
	${INSTALL_DATA} ${WRKSRC}/* ${DESTDIR}${PREFIX}/share/examples/systrace-policies

.include "../../mk/bsd.pkg.mk"
