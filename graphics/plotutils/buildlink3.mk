# $NetBSD: buildlink3.mk,v 1.15 2011/02/08 13:08:06 adam Exp $

BUILDLINK_TREE+=	plotutils

.if !defined(PLOTUTILS_BUILDLINK3_MK)
PLOTUTILS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.plotutils+=	plotutils>=2.4.1nb2
BUILDLINK_ABI_DEPENDS.plotutils+=	plotutils>=2.6nb2
BUILDLINK_PKGSRCDIR.plotutils?=	../../graphics/plotutils

pkgbase := plotutils
.include "../../mk/pkg-build-options.mk"

.include "../../graphics/png/buildlink3.mk"

.if !empty(PKG_BUILD_OPTIONS.plotutils:Mx11)
.include "../../x11/libXaw/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.endif
.endif # PLOTUTILS_BUILDLINK3_MK

BUILDLINK_TREE+=	-plotutils
