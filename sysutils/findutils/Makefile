# $NetBSD: Makefile,v 1.29 2012/05/29 22:02:31 cheusov Exp $

DISTNAME=	findutils-4.2.33
PKGREVISION=	3
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_GNU:=findutils/}

MAINTAINER=	bouyer@NetBSD.org
HOMEPAGE=	http://www.gnu.org/software/findutils/findutils.html
COMMENT=	The GNU find, xargs and locate utilities
LICENSE=	gnu-gpl-v3

GNU_CONFIGURE=		YES
INFO_FILES=		YES
PKG_DESTDIR_SUPPORT=	user-destdir
USE_PKGLOCALEDIR=	YES

LDFLAGS.IRIX+=		-lgen

CONFIGURE_ARGS+=	--program-prefix=g

AUTO_MKDIRS=		yes

post-install:
.for f in find locate updatedb xargs
	${LN} -sf ${PREFIX}/bin/g${f} ${DESTDIR}${PREFIX}/gnu/bin/${f}
	${LN} -sf ${PREFIX}/${PKGMANDIR}/man1/g${f}.1 ${DESTDIR}${PREFIX}/gnu/man/man1/${f}.1
.endfor
	${LN} -sf ${PREFIX}/${PKGMANDIR}/man5/glocatedb.5 ${DESTDIR}${PREFIX}/gnu/man/man5/locatedb.5

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
