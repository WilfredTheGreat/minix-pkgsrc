# $NetBSD: Makefile,v 1.19 2008/04/12 22:43:00 jlam Exp $

PKGNAME=	${DISTNAME:S/-/-nox11-/}

FILESDIR=	${.CURDIR}/../../editors/xemacs/files
PATCHDIR=	${.CURDIR}/../../editors/xemacs/patches
PKGDIR=		${.CURDIR}/../../editors/xemacs

# Mirror PKG_DESTDIR_SUPPORT setting from xemacs/Makefile.
PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../mk/bsd.prefs.mk"

PKG_OPTIONS.xemacs+=	-x11 -lucid
#PKG_OPTIONS.xemacs+=	-gtk -motif -xaw

.include "../../editors/xemacs/Makefile"
