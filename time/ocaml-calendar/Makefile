# $NetBSD: Makefile,v 1.4 2011/12/06 00:19:25 sbd Exp $
#

DISTNAME=	calendar-2.03.2
PKGNAME=	ocaml-${DISTNAME}
CATEGORIES=	time devel
MASTER_SITES=	http://forge.ocamlcore.org/frs/download.php/915/

MAINTAINER=	jaapb@kerguelen.org
HOMEPAGE=	http://calendar.forge.ocamlcore.org/
COMMENT=	OCaml library managing dates and times
LICENSE=	gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	ocaml-findlib-[0-9]*:../../devel/ocaml-findlib

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake

.include "../../mk/bsd.prefs.mk"

PLIST_VARS=	opt
.if (${MACHINE_ARCH} == "i386") || (${MACHINE_ARCH} == "powerpc") || \
    (${MACHINE_ARCH} == "sparc") || (${MACHINE_ARCH} == "x86_64")
PLIST.opt=	yes
.endif

TEST_TARGET=	tests

INSTALLATION_DIRS+=	lib/ocaml/site-lib

pre-install:
	${MKDIR} ${DESTDIR}${PREFIX}/lib/ocaml/site-lib

.include "../../lang/ocaml/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
