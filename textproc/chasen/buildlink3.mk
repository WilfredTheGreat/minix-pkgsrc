# $NetBSD: buildlink3.mk,v 1.3 2006/04/12 10:27:36 rillig Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
CHASEN_BUILDLINK3_MK:=	${CHASEN_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	chasen
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nchasen}
BUILDLINK_PACKAGES+=	chasen
BUILDLINK_ORDER+=	chasen

.if !empty(CHASEN_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.chasen+=	chasen>=2.0
BUILDLINK_PKGSRCDIR.chasen?=	../../textproc/chasen
BUILDLINK_FILES.chasen=		include/chasen.h
BUILDLINK_FILES.chasen+=	lib/libchasen.*
.endif	# CHASEN_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
