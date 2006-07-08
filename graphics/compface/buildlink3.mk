# $NetBSD: buildlink3.mk,v 1.5 2006/04/12 10:27:17 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
COMPFACE_BUILDLINK3_MK:=	${COMPFACE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	compface
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ncompface}
BUILDLINK_PACKAGES+=	compface
BUILDLINK_ORDER+=	compface

.if !empty(COMPFACE_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.compface+=	compface>=1.4
BUILDLINK_ABI_DEPENDS.compface?=	compface>=1.5.1nb1
BUILDLINK_PKGSRCDIR.compface?=	../../graphics/compface
.endif	# COMPFACE_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
