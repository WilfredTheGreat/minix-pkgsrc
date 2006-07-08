# $NetBSD: buildlink3.mk,v 1.5 2006/04/06 06:22:51 reed Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
KAKASI_BUILDLINK3_MK:=	${KAKASI_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	kakasi
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nkakasi}
BUILDLINK_PACKAGES+=	kakasi
BUILDLINK_ORDER+=	kakasi

.if !empty(KAKASI_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.kakasi+=	kakasi>=2.3.0
BUILDLINK_ABI_DEPENDS.kakasi+=	kakasi>=2.3.4nb4
BUILDLINK_PKGSRCDIR.kakasi?=	../../textproc/kakasi
.endif	# KAKASI_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
