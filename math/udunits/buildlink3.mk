# $NetBSD: buildlink3.mk,v 1.3 2006/04/12 10:27:26 rillig Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
UDUNITS_BUILDLINK3_MK:=	${UDUNITS_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	udunits
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nudunits}
BUILDLINK_PACKAGES+=	udunits
BUILDLINK_ORDER+=	udunits

.if !empty(UDUNITS_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.udunits+=	udunits>=1.11.7
BUILDLINK_PKGSRCDIR.udunits?=	../../math/udunits
BUILDLINK_DEPMETHOD.udunits?=	build
BUILDLINK_FILES.udunits=	include/udunits.inc
.endif	# UDUNITS_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
