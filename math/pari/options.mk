# $NetBSD: options.mk,v 1.11 2009/09/13 14:11:11 wiz Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.pari
PKG_SUPPORTED_OPTIONS=	gmp
PKG_SUGGESTED_OPTIONS=	gmp

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		nogmp gmp

.if !empty(PKG_OPTIONS:Mgmp)
PLIST.gmp=		yes

CONFIGURE_ARGS+=	--with-gmp=${PREFIX:Q}

.include "../../devel/gmp/buildlink3.mk"
.else
PLIST.nogmp=		yes
.endif
