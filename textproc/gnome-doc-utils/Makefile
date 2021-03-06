# $NetBSD: Makefile,v 1.56 2012/06/14 07:44:42 sbd Exp $
#

DISTNAME=	gnome-doc-utils-0.20.10
CATEGORIES=	textproc gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gnome-doc-utils/0.20/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnome.org/
COMMENT=	Documentation utilities for the GNOME project
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	${PYPKGPREFIX}-libxml2>=2.6.16:../../textproc/py-libxml2
DEPENDS+=	${PYPKGPREFIX}-libxslt>=1.1.12:../../textproc/py-libxslt
DEPENDS+=	docbook-xml>=4.5:../../textproc/docbook-xml

USE_TOOLS+=		intltool pkg-config gmake gawk msgfmt bash:run
GNU_CONFIGURE=		YES
MAKE_JOBS_SAFE=		no
TEST_TARGET=		check
USE_PKGLOCALEDIR=	YES
REPLACE_BASH=		tools/gnome-doc-tool.in

CONFIGURE_ARGS+=	PYTHON=${PYTHONBIN:Q}

PKGCONFIG_OVERRIDE=	tools/gnome-doc-utils.pc.in
PKGCONFIG_OVERRIDE+=	xml2po/xml2po.pc.in

PY_PATCHPLIST=		yes

BUILDLINK_API_DEPENDS.libxml2+=	libxml2>=2.6.12
BUILDLINK_DEPMETHOD.libxslt=	build
BUILDLINK_DEPMETHOD.libxml2=	build

post-install:
	${PY_COMPILE_ALL} ${DESTDIR}${PREFIX}/share/xml2po

.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../textproc/xmlcatmgr/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
