# $NetBSD: options.mk,v 1.1 2004/11/17 21:42:11 xtraeme Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.dia
#PKG_SUPPORTED_OPTIONS=	gnome cairo
PKG_SUPPORTED_OPTIONS=	gnome
PKG_DEFAULT_OPTIONS=	gnome 

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mgnome)
USE_DIRS+=		gnome2-1.5
CONFIGURE_ARGS+=	--enable-gnome
.  include "../../devel/libgnome/buildlink3.mk"
.  include "../../devel/libgnomeui/buildlink3.mk"
PLIST_SUBST+=		GNOME_OPTION=
.else
CONFIGURE_ARGS+=	--disable-gnome
PLIST_SUBST+=		GNOME_OPTION='@comment '
.endif

# Disabled, freedesktop is down.
.if !empty(PKG_OPTIONS:Mcairo)
CONFIGURE_ARGS+=	--with-cairo
.  include "../../graphics/cairo/buildlink3.mk"
PLIST_SUBST+=		CAIRO_OPTION=
.else
CONFIGURE_ARGS+=	--without-cairo
PLIST_SUBST+=		CAIRO_OPTION='@comment '
.endif

