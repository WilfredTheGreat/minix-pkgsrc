# $NetBSD: buildlink3.mk,v 1.4 2006/04/12 10:27:34 rillig Exp $
#

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
FILE_BUILDLINK3_MK:=	${FILE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	file
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nfile}
BUILDLINK_PACKAGES+=	file
BUILDLINK_ORDER+=	file

.if !empty(FILE_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.file+=	file>=4.09
BUILDLINK_ABI_DEPENDS.file+=	file>=4.09nb1
BUILDLINK_PKGSRCDIR.file?=	../../sysutils/file
.endif	# FILE_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
