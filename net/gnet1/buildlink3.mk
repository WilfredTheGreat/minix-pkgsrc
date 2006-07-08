# $NetBSD: buildlink3.mk,v 1.7 2006/04/12 10:27:29 rillig Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
GNET1_BUILDLINK3_MK:=	${GNET1_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	gnet1
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ngnet1}
BUILDLINK_PACKAGES+=	gnet1
BUILDLINK_ORDER+=	gnet1

.if !empty(GNET1_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.gnet1+=	gnet1>=1.1.8nb2
BUILDLINK_ABI_DEPENDS.gnet1+=	gnet1>=1.1.8nb4
BUILDLINK_PKGSRCDIR.gnet1?=	../../net/gnet1
.endif	# GNET1_BUILDLINK3_MK

.include "../../devel/glib2/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
