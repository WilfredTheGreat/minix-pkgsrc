# $NetBSD: Makefile,v 1.16 2012/06/14 07:44:02 sbd Exp $
#

DISTNAME=	paprefs-0.9.7
PKGREVISION=	13
CATEGORIES=	audio
MASTER_SITES=	http://0pointer.de/lennart/projects/paprefs/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://0pointer.de/lennart/projects/paprefs/
COMMENT=	Configuration dialog for the PulseAudio sound server

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++
USE_TOOLS+=	pkg-config gmake intltool perl msgfmt

CONFIGURE_ARGS+=	--disable-lynx

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../audio/pulseaudio/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gconfmm/buildlink3.mk"
.include "../../devel/libglademm/buildlink3.mk"
.include "../../devel/libsigc++/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/gtkmm/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
