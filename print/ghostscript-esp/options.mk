# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.ghostscript-esp
PKG_SUPPORTED_OPTIONS=	x11
PKG_SUGGESTED_OPTIONS=	x11

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mx11)
CONFIGURE_ARGS+=	--with-x
.include "../../mk/x11.buildlink3.mk"
.else
CONFIGURE_ARGS+=        --without-x
.endif
