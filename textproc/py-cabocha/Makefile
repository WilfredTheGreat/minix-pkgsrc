# $NetBSD: Makefile,v 1.1.1.1 2010/05/19 12:37:04 obache Exp $
#

.include "../../textproc/cabocha/Makefile.common"

PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	1
CATEGORIES+=	python

COMMENT=	CaboCha python module

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	c c++

PYSETUPSUBDIR=	python

EGG_NAME=	${DISTNAME:S/-/_python-/}

BUILDLINK_API_DEPENDS.cabocha+=	cabocha>=${PKGVERSION_NOREV}
.include "../../textproc/cabocha/buildlink3.mk"
.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
