# $NetBSD: Makefile,v 1.4 2007/02/22 19:26:09 wiz Exp $
#

DISTNAME=		pdbalign
PKGNAME=		pdbalign-20030812
CATEGORIES=		biology
MASTER_SITES=		ftp://ftp.ebi.ac.uk/pub/software/unix/pdbalign/

MAINTAINER=		hdp@cs.nmsu.edu
HOMEPAGE=		#empty
COMMENT=		Prediction of Protein Secondary Structure and Active Sites

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=			${WRKDIR}
INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pdbalign ${DESTDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/distalign ${DESTDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/pdbdist ${DESTDIR}${PREFIX}/bin

.include "../../mk/bsd.pkg.mk"
