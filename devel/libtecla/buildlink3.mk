# $NetBSD: buildlink3.mk,v 1.4 2006/04/12 10:27:12 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBTECLA_BUILDLINK3_MK:=	${LIBTECLA_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libtecla
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibtecla}
BUILDLINK_PACKAGES+=	libtecla
BUILDLINK_ORDER+=	libtecla

.if !empty(LIBTECLA_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libtecla+=	libtecla>=1.5.0
BUILDLINK_ABI_DEPENDS.libtecla?=	libtecla>=1.6.1nb1
BUILDLINK_PKGSRCDIR.libtecla?=	../../devel/libtecla
.endif	# LIBTECLA_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
