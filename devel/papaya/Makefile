# $NetBSD: Makefile,v 1.25 2011/07/06 13:17:46 obache Exp $
#

DISTNAME=	papaya-0.1.7
PKGREVISION=	7
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=papaya-utils/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://sourceforge.net/projects/papaya-utils/
COMMENT=	Simple scripts for software development

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# none, not even C
GNU_CONFIGURE=	YES
CONFIGURE_ENV+=	gzip_command=${TOOLS_GZIP_CMD:Q}
CONFIGURE_ENV+=	sh_command=${TOOLS_SH:Q}
CONFIGURE_ENV+=	tar_command=${TOOLS_TAR:Q}
CONFIGURE_ENV+=	texi2html_command=${TOOLS_PATH.texi2html:Q}
CONFIGURE_ENV+=	gmake_command=${TOOLS_PATH.gmake}
USE_TOOLS+=	sh perl:run tar texi2html gmake:run gzip:run makeinfo
INFO_FILES=	# PLIST

CONFIGURE_ENV+=	perl_command=${PERL5:Q}

pre-configure:
	cd ${WRKSRC}/src &&						\
	${CP} detab.in detab.in.cr &&					\
	${TR} -d '\r' < detab.in.cr > detab.in

# let not to be regenerated from patched papaya.texi file.
post-patch:
	${TOUCH} ${WRKSRC}/doc/papaya.info

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/html/*.html ${WRKSRC}/doc/papaya/*.html ${DESTDIR}${PREFIX}/share/doc/papaya

.include "../../mk/bsd.pkg.mk"
