# $NetBSD: buildlink3.mk,v 1.5 2006/04/12 10:27:10 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBIBERTY_BUILDLINK3_MK:=	${LIBIBERTY_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libiberty
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibiberty}
BUILDLINK_PACKAGES+=	libiberty
BUILDLINK_ORDER+=	libiberty

.if !empty(LIBIBERTY_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libiberty+=	libiberty>=1.0nb1
BUILDLINK_ABI_DEPENDS.libiberty?=	libiberty>=1.0nb2
BUILDLINK_PKGSRCDIR.libiberty?=	../../devel/libiberty
.endif	# LIBIBERTY_BUILDLINK3_MK
BUILDLINK_DEPMETHOD.libiberty?= build

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
