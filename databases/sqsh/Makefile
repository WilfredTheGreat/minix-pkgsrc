# $NetBSD: Makefile,v 1.30 2011/04/22 14:40:41 obache Exp $

# This section contains variables that might be overridden.
PKGNAME?=	${PKGNAME_BASE}
COMMENT?=	SQL shell for Sybase and MS-SQL servers

# Normal package Makefile contents follow.
DISTNAME=	sqsh-2.1-src
PKGNAME_BASE=	${DISTNAME:S/-src//}
PKGREVISION=	8
CATEGORIES=	databases
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sqsh/}

CONFLICTS+=	sqsh-[0-9]*
CONFLICTS+=	sqsh-motif-[0-9]*
CONFLICTS+=	sqsh-x11-[0-9]*

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.sqsh.org/

PKG_DESTDIR_SUPPORT=	user-destdir

.include "options.mk"

WRKSRC=			${WRKDIR}/${DISTNAME:S/-src//}
GNU_CONFIGURE=		yes
BUILD_TARGET=		build

CONFIGURE_ARGS+=	--with-readline
CONFIGURE_ENV+=		INCDIRS=${BUILDLINK_PREFIX.readline:Q}/include
CONFIGURE_ENV+=		LIBDIRS=${BUILDLINK_PREFIX.readline:Q}/lib

CHECK_HEADERS_SKIP=	src/sqsh_config.h

CONF_FILES+=		${PREFIX}/share/examples/sqsh/sample.sqshrc	\
			${PKG_SYSCONFDIR}/sqshrc

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/sqsh ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/sqsh.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/sqsh.1
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/examples/sqsh
	${INSTALL_DATA} ${WRKSRC}/doc/sample.sqshrc \
		${DESTDIR}${PREFIX}/share/examples/sqsh

.include "../../devel/readline/buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
