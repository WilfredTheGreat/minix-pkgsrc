# $NetBSD: buildlink3.mk,v 1.5 2006/04/12 10:27:14 rillig Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
DATLIB_BUILDLINK3_MK:=	${DATLIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	DatLib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NDatLib}
BUILDLINK_PACKAGES+=	DatLib
BUILDLINK_ORDER+=	DatLib

.if !empty(DATLIB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.DatLib+=	DatLib>=2.8
BUILDLINK_ABI_DEPENDS.DatLib?=	DatLib>=2.15nb1
BUILDLINK_PKGSRCDIR.DatLib?=	../../emulators/DatLib
.endif	# DATLIB_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
