# $NetBSD: Makefile,v 1.41 2012/05/29 20:37:08 cheusov Exp $
#

DISTNAME=	cpio-2.6
PKGNAME=	g${DISTNAME}
PKGREVISION=	10
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GNU:=cpio/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnu.org/software/cpio/cpio.html
COMMENT=	GNU copy-in/out (cpio) with remote magnetic tape (rmt) support
LICENSE=	gnu-gpl-v2

CONFLICTS+=	gtar-base-[0-9]*

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	makeinfo
INFO_FILES=	yes

AUTO_MKDIRS=	yes

TEST_TARGET=		check

CONFIGURE_ENV+=		gt_cv_func_gnugettext1_libintl=yes

CONFIGURE_ARGS+=	--program-prefix=g

post-install:
	${LN} -sf ${PREFIX}/bin/gcpio ${DESTDIR}${PREFIX}/gnu/bin/cpio
	${LN} -sf ${PREFIX}/${PKGMANDIR}/man1/gcpio.1 ${DESTDIR}${PREFIX}/gnu/man/man1/cpio.1
	${LN} -sf ${PREFIX}/${PKGMANDIR}/man1/gmt.1 ${DESTDIR}${PREFIX}/gnu/man/man1/mt.1

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
