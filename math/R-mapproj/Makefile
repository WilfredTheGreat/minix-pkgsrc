# $NetBSD: Makefile,v 1.5 2009/12/11 19:35:02 adam Exp $

CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	${R_HOMEPAGE_BASE}/mapproj/
COMMENT=	Converts latitude/longitude into projected coordinates
LICENSE=	lucent AND gnu-gpl-v2

R_PKGNAME=	mapproj
R_PKGVER=	1.1-8.3

DEPENDS+=	R-maps>=2.2.5:../../math/R-maps

.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
