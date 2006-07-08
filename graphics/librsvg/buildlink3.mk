# $NetBSD: buildlink3.mk,v 1.6 2006/04/17 13:46:01 wiz Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBRSVG_BUILDLINK3_MK:=	${LIBRSVG_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	librsvg
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibrsvg}
BUILDLINK_PACKAGES+=	librsvg
BUILDLINK_ORDER+=	librsvg

.if !empty(LIBRSVG_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.librsvg+=	librsvg>=1.0.1nb5
BUILDLINK_ABI_DEPENDS.librsvg+=	librsvg>=1.0.3nb2
BUILDLINK_PKGSRCDIR.librsvg?=	../../graphics/librsvg
.endif	# LIBRSVG_BUILDLINK3_MK

.include "../../graphics/gdk-pixbuf/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../textproc/libxml/buildlink3.mk"
.include "../../x11/gnome-libs/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
