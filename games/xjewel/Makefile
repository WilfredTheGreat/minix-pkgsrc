# $NetBSD: Makefile,v 1.12 2011/05/24 09:54:05 obache Exp $

DISTNAME=	xjewel-1.6
PKGREVISION=	3
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB:S/contrib/R5contrib/}
EXTRACT_SUFX=	.tar.z

MAINTAINER=	jdc@NetBSD.org
COMMENT=	X windows-based dropping jewels game

PKG_DESTDIR_SUPPORT=	user-destdir

USE_IMAKE=	yes
USE_TOOLS+=	gzcat bdftopcf mkfontdir
USE_GAMESGROUP=	yes

BUILD_DEFS+=	VARBASE

SPECIAL_PERMS+=		bin/xjewel ${SETGID_GAMES_PERMS}
REQD_DIRS+=		${VARBASE}/games
REQD_FILES_PERMS+=	/dev/null ${VARBASE}/games/xjewel.scores ${GAMEDATA_PERMS}

SUBST_CLASSES+=		varbase
SUBST_STAGE.varbase=	pre-configure
SUBST_FILES.varbase=	Imakefile
SUBST_VARS.varbase=	VARBASE

.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
