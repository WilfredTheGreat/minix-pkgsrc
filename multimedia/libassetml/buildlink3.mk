# $NetBSD: buildlink3.mk,v 1.4 2006/04/12 10:27:27 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBASSETML_BUILDLINK3_MK:=	${LIBASSETML_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libassetml
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibassetml}
BUILDLINK_PACKAGES+=	libassetml
BUILDLINK_ORDER+=	libassetml

.if !empty(LIBASSETML_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libassetml+=	libassetml>=1.2.1
BUILDLINK_ABI_DEPENDS.libassetml?=	libassetml>=1.2.1nb1
BUILDLINK_PKGSRCDIR.libassetml?=	../../multimedia/libassetml
.endif	# LIBASSETML_BUILDLINK3_MK

.include "../../devel/glib2/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
