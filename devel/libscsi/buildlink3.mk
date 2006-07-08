# $NetBSD: buildlink3.mk,v 1.3 2006/04/12 10:27:11 rillig Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBSCSI_BUILDLINK3_MK:=	${LIBSCSI_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libscsi
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibscsi}
BUILDLINK_PACKAGES+=	libscsi
BUILDLINK_ORDER+=	libscsi

.if !empty(LIBSCSI_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libscsi+=	libscsi>=1.6
BUILDLINK_PKGSRCDIR.libscsi?=	../../devel/libscsi
BUILDLINK_DEPMETHOD.libscsi?=	build
.endif	# LIBSCSI_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
