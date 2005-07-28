# $NetBSD$

PKG_OPTIONS_VAR=		PKG_OPTIONS.libcaca
PKG_SUPPORTED_OPTIONS=		imlib2
PKG_OPTIONS_NONEMPTY_SETS=	driver
PKG_OPTIONS_SET.driver=		ncurses slang x11
PKG_SUGGESTED_OPTIONS=		ncurses

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mimlib2)
.  include "../../graphics/imlib2/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-imlib2
.else
CONFIGURE_ARGS+=	--disable-imlib2
.endif

.if !empty(PKG_OPTIONS:Mncurses)
.  include "../../devel/ncurses/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-ncurses
.else
CONFIGURE_ARGS+=	--disable-ncurses
.endif

.if !empty(PKG_OPTIONS:Mslang)
.  include "../../devel/libslang/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-slang
.else
CONFIGURE_ARGS+=	--disable-slang
.endif

.if !empty(PKG_OPTIONS:Mx11)
.  include "../../mk/x11.buildlink3.mk"
CONFIGURE_ARGS+=	--enable-x11
.else
CONFIGURE_ARGS+=	--disable-x11
.endif
