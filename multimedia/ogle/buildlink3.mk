# $NetBSD: buildlink3.mk,v 1.5 2006/04/12 10:27:28 rillig Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
OGLE_BUILDLINK3_MK:=	${OGLE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	ogle
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nogle}
BUILDLINK_PACKAGES+=	ogle
BUILDLINK_ORDER+=	ogle

.if !empty(OGLE_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.ogle+=	ogle>=0.9.2
BUILDLINK_ABI_DEPENDS.ogle+=	ogle>=0.9.2nb3
BUILDLINK_PKGSRCDIR.ogle?=	../../multimedia/ogle
.endif	# OGLE_BUILDLINK3_MK

.include "../../textproc/libxml2/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
