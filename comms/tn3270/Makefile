# $NetBSD: Makefile,v 1.5 2011/11/14 01:36:46 dholland Exp $

DISTNAME=	tn3270-0.20100116
CATEGORIES=	comms net
MASTER_SITES=	${MASTER_SITE_LOCAL}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	# empty
COMMENT=	Utilities for connecting to IBM VM/CMS systems

LICENSE=	modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		yacc

INSTALLATION_DIRS+=	bin share/tn3270

.include "../../mk/curses.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
