# $NetBSD: Makefile,v 1.67 2012/02/06 12:42:32 wiz Exp $
#

DISTNAME=	zenity-2.32.1
PKGREVISION=	5
CATEGORIES=	x11 gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/zenity/2.32/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnome.org/
COMMENT=	Display GNOME dialogs from the command line

PKG_DESTDIR_SUPPORT=	user-destdir

USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake intltool msgfmt pkg-config

BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.8.0

.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
#.include "../../devel/libglade/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
#.include "../../graphics/libgnomecanvas/buildlink3.mk"
.include "../../textproc/gnome-doc-utils/buildlink3.mk"
.include "../../mk/omf-scrollkeeper.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
