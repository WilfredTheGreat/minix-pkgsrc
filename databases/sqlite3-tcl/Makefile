# $NetBSD: Makefile,v 1.35 2012/06/11 16:21:31 adam Exp $

DISTNAME=	sqlite-autoconf-3071300
PKGNAME=	sqlite3-tcl-3.7.13
PKGREVISION=	1
CATEGORIES=	databases
MASTER_SITES=	http://www.hwaci.com/sw/sqlite/ \
		http://www.sqlite.org/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.sqlite.org/
COMMENT=	SQL Database Engine in a C Library (TCL extension)
LICENSE=	public-domain

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/${DISTNAME}/tea

USE_TOOLS+=		gmake
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-tcl=${BUILDLINK_PREFIX.tcl}/lib

PLIST_SUBST+=		TCL_TRIM_DOTS=${PKGVERSION_NOREV:S/.//g}

BUILDLINK_API_DEPENDS.sqlite3+=	sqlite3>=3.6.10

.include "../../databases/sqlite3/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../lang/tcl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
