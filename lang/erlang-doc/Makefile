# $NetBSD: Makefile,v 1.8 2009/12/21 12:07:27 joerg Exp $

DISTNAME=		otp_doc_html_${DIST_VERSION_MAJOR}${DIST_VERSION_MINOR:D-${DIST_VERSION_MINOR}}
PKGNAME=		erlang-doc-${ERLANG_VERSION}
CATEGORIES=		lang
MASTER_SITES=		http://www.erlang.org/download/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.erlang.org/
COMMENT=		Documentation for Erlang, a concurrent functional programming language

DIST_SUBDIR=		erlang

# needs erlang installed for its directory structure
DEPENDS+=		erlang-${ERLANG_VERSION}{,nb*}:../../lang/erlang

PKG_DESTDIR_SUPPORT=	user-destdir

NO_CONFIGURE=		yes
NO_BUILD=		yes

USE_TOOLS+=		pax

# these files are already installed by ../../lang/erlang:
DUPLICATE_FILES=	lib/cosEvent-${VERSION.cosEvent}/info
DUPLICATE_FILES+=	lib/cosEventDomain-${VERSION.cosEventDomain}/info
DUPLICATE_FILES+=	lib/mnesia_session-${VERSION.mnesia_session}/info

do-install:
	cd ${WRKDIR} && pax ${DUPLICATE_FILES:=-s,%,,} -rw doc erts-${VERSION.erts} lib ${DESTDIR}${PREFIX}/lib/erlang/

.include "../../lang/erlang/Makefile.versions"

.include "../../mk/bsd.pkg.mk"
