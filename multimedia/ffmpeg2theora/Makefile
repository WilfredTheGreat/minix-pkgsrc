# $NetBSD: Makefile,v 1.1.1.1 2012/02/06 23:09:30 tron Exp $

DISTNAME=	ffmpeg2theora-0.28
CATEGORIES=	multimedia
MASTER_SITES=	http://v2v.cc/~j/ffmpeg2theora/downloads/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://v2v.cc/~j/ffmpeg2theora/
COMMENT=	Simple converter to create Ogg Theora files
LICENSE=	gnu-gpl-v3

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		pkg-config
BUILD_DEPENDS+=		scons>=1.3.1:../../devel/scons

INSTALLATION_DIRS+=	bin ${PKGMANDIR}/man1

SCONS=		${PREFIX}/bin/scons
SCONS_ARGS=	-C ${WRKSRC} destdir=${DESTDIR:Q} prefix=${PREFIX:Q}
SCONS_ARGS+=	APPEND_CCFLAGS=${CFLAGS:Q}
SCONS_ARGS+=	APPEND_LINKFLAGS=${LDFLAGS:Q}

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${SCONS} ${SCONS_ARGS}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ffmpeg2theora ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ffmpeg2theora.1 \
	  ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../audio/libvorbis/buildlink3.mk"
.include "../../multimedia/ffmpeg/buildlink3.mk"
.include "../../multimedia/libogg/buildlink3.mk"
.include "../../multimedia/libtheora/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
