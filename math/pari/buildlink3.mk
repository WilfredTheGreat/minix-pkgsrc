# $NetBSD: buildlink3.mk,v 1.5 2006/04/12 10:27:26 rillig Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
PARI_BUILDLINK3_MK:=	${PARI_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	pari
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Npari}
BUILDLINK_PACKAGES+=	pari
BUILDLINK_ORDER+=	pari

.if !empty(PARI_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.pari+=	pari>=2.1.5nb1
BUILDLINK_ABI_DEPENDS.pari+=	pari>=2.1.6nb1
BUILDLINK_PKGSRCDIR.pari?=	../../math/pari
.endif	# PARI_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
