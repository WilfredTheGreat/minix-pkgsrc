# $NetBSD: Makefile,v 1.26 2012/08/01 11:15:32 imil Exp $
#

DISTNAME=		pkgin-0.6.2.2
PKGREVISION=		1
CATEGORIES=		pkgtools
MASTER_SITES=		ftp://ftp.NetBSD.org/pub/NetBSD/misc/imil/

MAINTAINER=		imil@NetBSD.org
HOMEPAGE=		http://pkgin.net/
COMMENT=		Apt / yum like tool for managing pkgsrc binary packages
LICENSE=		modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

EGDIR=			${PREFIX}/share/examples/${PKGBASE}
CONF_FILES=		${EGDIR}/repositories.conf.example		\
			${PKG_SYSCONFDIR}/${PKGBASE}/repositories.conf

OWN_DIRS+=		${PKG_SYSCONFDIR}/${PKGBASE}
INSTALLATION_DIRS+=	bin ${PKGMANDIR}/man1 ${EGDIR}

WRKSRC=			${WRKDIR}/pkgin

SUBST_CLASSES+=		path
SUBST_STAGE.path=	pre-configure
SUBST_MESSAGE.path=	Adjusting path.
SUBST_FILES.path=	Makefile.in actions.c pkgin.1
SUBST_SED.path=		-e "s|/usr/pkg/etc|${PKG_SYSCONFDIR}|g"
SUBST_SED.path+=	-e "s|/usr/sbin|${PKG_TOOLS_BIN}|g"
SUBST_SED.path+=	-e "s|/var|${VARBASE}|g"
SUBST_SED.path+=	-e "s|/usr/pkg|${PREFIX}|g"

GNU_CONFIGURE=		yes
USE_FEATURES=		nbcompat
USE_TOOLS+=		nroff

DEPENDS+=		pkg_install>=20110215:../../pkgtools/pkg_install

.include "../../mk/bsd.prefs.mk"

# those have official repositories
.if ${OPSYS} == "NetBSD" || ${OPSYS} == "DragonFly" || ${OPSYS} == "Minix"
pre-install:
	${GREP} -i ${OPSYS} ${WRKSRC}/REPOSITORIES >> 		\
		${WRKSRC}/repositories.conf
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pkgin ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pkgin.1				\
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_DATA} ${WRKSRC}/repositories.conf			\
		${DESTDIR}${EGDIR}/repositories.conf.example

# libfetch has no builtin.mk and is included in NetBSD>=5
.if ${OPSYS} != "NetBSD" || \
	(${OPSYS} == "NetBSD" && !empty(OS_VERSION:M[0-4].*))
.	include "../../net/libfetch/buildlink3.mk"
.endif

.include "../../archivers/libarchive/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
