# $NetBSD: Makefile,v 1.8 2012/03/15 11:53:42 obache Exp $
#

PKGNAME=	${APACHE_PKG_PREFIX}-${DISTNAME}
PKGREVISION=	2

PKG_DESTDIR_SUPPORT=	user-destdir

COMMENT=	Simple Common Gateway Interface for Apache

DEPENDS+=	${PYPKGPREFIX}-scgi-[0-9]*:../../www/py-scgi

APACHE_MODULE= yes

# does not compile with apache24
PKG_APACHE_ACCEPTED=	apache13 apache2 apache22

.include "../../mk/apache.mk"
.include "../../www/apache/module.mk"

.if ${APACHE_PKG_PREFIX} == "ap13"
MODULE_EXT=	so
APACHE_MODULE_SRCDIR=	${WRKDIR}/${DISTNAME}/apache1
.else
MODULE_EXT=	la
APACHE_MODULE_SRCDIR=	${WRKDIR}/${DISTNAME}/apache2
.endif

APACHE_MODULE_NAME=	mod_scgi.${MODULE_EXT}
APACHE_MODULE_SRC=	mod_scgi.c

.include "../../lang/python/pyversion.mk"
.include "../../www/py-scgi/Makefile.common"
