# $NetBSD: buildlink3.mk,v 1.3 2006/04/12 10:27:38 rillig Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
CGIC_BUILDLINK3_MK:=	${CGIC_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	cgic
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ncgic}
BUILDLINK_PACKAGES+=	cgic
BUILDLINK_ORDER+=	cgic

.if !empty(CGIC_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.cgic+=	cgic>=2.02nb1
BUILDLINK_PKGSRCDIR.cgic?=	../../www/cgic
.endif	# CGIC_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
