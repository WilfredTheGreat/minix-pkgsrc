# $NetBSD: Makefile,v 1.6 2011/12/10 14:36:38 cheusov Exp $
#

DISTNAME=	htop-1.0.1
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=htop/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://htop.sourceforge.net/
COMMENT=	Enhanced version of top utility
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_NCURSES=	yes # uses ncurses mouse definitions

USE_LIBTOOL=	yes

ONLY_FOR_PLATFORM=     Linux-*-* FreeBSD-*-* NetBSD-*-*

CONFIGURE_ENV+=		ac_cv_file__proc_stat=yes ac_cv_file__proc_meminfo=yes

.include "../../devel/ncursesw/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
