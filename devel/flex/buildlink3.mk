# $NetBSD: buildlink3.mk,v 1.3 2006/04/12 10:27:08 rillig Exp $
#

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
FLEX_BUILDLINK3_MK:=	${FLEX_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	flex
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nflex}
BUILDLINK_PACKAGES+=	flex
BUILDLINK_ORDER+=	flex

.if !empty(FLEX_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.flex+=	flex>=2.5.4a
BUILDLINK_PKGSRCDIR.flex?=	../../devel/flex
BUILDLINK_DEPMETHOD.flex?=	build
.endif	# FLEX_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
