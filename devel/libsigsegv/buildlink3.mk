# $NetBSD: buildlink3.mk,v 1.5 2006/07/08 23:10:46 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBSIGSEGV_BUILDLINK3_MK:=	${LIBSIGSEGV_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libsigsegv
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibsigsegv}
BUILDLINK_PACKAGES+=	libsigsegv
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libsigsegv

.if !empty(LIBSIGSEGV_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libsigsegv+=	libsigsegv>=2.2
BUILDLINK_PKGSRCDIR.libsigsegv?=	../../devel/libsigsegv
.endif	# LIBSIGSEGV_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
