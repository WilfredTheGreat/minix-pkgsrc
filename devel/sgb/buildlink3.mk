# $NetBSD: buildlink3.mk,v 1.1.1.1 2006/05/04 09:35:33 minskim Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
SGB_BUILDLINK3_MK:=	${SGB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	sgb
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nsgb}
BUILDLINK_PACKAGES+=	sgb
BUILDLINK_ORDER+=	sgb

.if !empty(SGB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.sgb+=	sgb>=0pre20050409
BUILDLINK_PKGSRCDIR.sgb?=	../../devel/sgb
.endif	# SGB_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
