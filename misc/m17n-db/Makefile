# $NetBSD: Makefile,v 1.14 2010/10/16 12:53:11 obache Exp $
#

DISTNAME=	m17n-db-1.6.2
PKGREVISION=	1
CATEGORIES=	misc
MASTER_SITES=	http://www.m17n.org/m17n-lib-download/

MAINTAINER=	obache@NetBSD.org
HOMEPAGE=	http://www.m17n.org/m17n-lib-en/index.html
COMMENT=	The m17n database used by the m17n library
LICENSE=	gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake msgfmt pkg-config
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c

PKGCONFIG_OVERRIDE+=	m17n-db.pc.in

.include "../../mk/bsd.prefs.mk"

#XXX: FS size of one-true-awk 20070501 is limited to 10.  Use gawk instead.
.if ${OPSYS} == "NetBSD" && !empty(OS_VERSION:M4.99*) || \
    ${OPSYS} == "DragonFly" && (!empty(OS_VERSION:M1.1[0-9]*) || !empty(OS_VERSION:M2.*))
USE_TOOLS+=		gawk
.endif

.if ${OPSYS} != "Linux"
GLIBC=			glibc-2.3.6
DISTFILES=		${DEFAULT_DISTFILES} ${GLIBC}.tar.gz
SITES.${GLIBC}.tar.gz=	${MASTER_SITE_GNU:=glibc/}
CONFIGURE_ARGS+=	--with-charmaps=${WRKDIR}/${GLIBC}/localedata/charmaps
.endif

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
