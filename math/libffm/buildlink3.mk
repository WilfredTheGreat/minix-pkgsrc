# $NetBSD: buildlink3.mk,v 1.5 2006/04/12 10:27:26 rillig Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBFFM_BUILDLINK3_MK:=	${LIBFFM_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libffm
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibffm}
BUILDLINK_PACKAGES+=	libffm
BUILDLINK_ORDER+=	libffm

.if !empty(LIBFFM_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libffm+=	libffm>=0.28
BUILDLINK_ABI_DEPENDS.libffm?=	libffm>=0.28nb1
BUILDLINK_PKGSRCDIR.libffm?=	../../math/libffm
.endif	# LIBFFM_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
