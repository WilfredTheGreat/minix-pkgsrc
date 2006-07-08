# $NetBSD: buildlink3.mk,v 1.5 2006/04/12 10:27:31 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
JA_VFLIB_LIB_BUILDLINK3_MK:=	${JA_VFLIB_LIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	ja-vflib-lib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nja-vflib-lib}
BUILDLINK_PACKAGES+=	ja-vflib-lib
BUILDLINK_ORDER+=	ja-vflib-lib

.if !empty(JA_VFLIB_LIB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.ja-vflib-lib+=	ja-vflib-lib>=2.24.2
BUILDLINK_ABI_DEPENDS.ja-vflib-lib+=	ja-vflib-lib>=2.24.2nb2
BUILDLINK_PKGSRCDIR.ja-vflib-lib?=	../../print/ja-vflib-lib
.endif	# JA_VFLIB_LIB_BUILDLINK3_MK

.include "../../graphics/freetype-lib/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
