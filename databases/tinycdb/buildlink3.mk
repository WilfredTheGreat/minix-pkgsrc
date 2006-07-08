# $NetBSD: buildlink3.mk,v 1.3 2006/04/12 10:27:05 rillig Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
TINYCDB_BUILDLINK3_MK:=	${TINYCDB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	tinycdb
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ntinycdb}
BUILDLINK_PACKAGES+=	tinycdb
BUILDLINK_ORDER+=	tinycdb

.if !empty(TINYCDB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.tinycdb+=	tinycdb>=0.75
BUILDLINK_DEPMETHOD.tinycdb?=	build
BUILDLINK_PKGSRCDIR.tinycdb?=	../../databases/tinycdb
.endif	# TINYCDB_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
