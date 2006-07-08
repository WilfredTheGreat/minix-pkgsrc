# $NetBSD: buildlink3.mk,v 1.9 2006/04/12 10:27:07 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
DLCOMPAT_BUILDLINK3_MK:=	${DLCOMPAT_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	dlcompat
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ndlcompat}
BUILDLINK_PACKAGES+=	dlcompat
BUILDLINK_ORDER+=	dlcompat

.if !empty(DLCOMPAT_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.dlcompat+=	dlcompat>=20030629
BUILDLINK_PKGSRCDIR.dlcompat?=	../../devel/dlcompat
.endif  # DLCOMPAT_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
