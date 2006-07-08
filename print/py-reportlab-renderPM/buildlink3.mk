# $NetBSD: buildlink3.mk,v 1.4 2006/04/12 10:27:32 rillig Exp $

BUILDLINK_DEPTH:=				${BUILDLINK_DEPTH}+
PYRLRENDERPM_BUILDLINK3_MK:=	${PYRLRENDERPM_BUILDLINK3_MK}+

.include "../../lang/python/pyversion.mk"

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	pyrlrenderpm
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Npyrlrenderpm}
BUILDLINK_PACKAGES+=	pyrlrenderpm
BUILDLINK_ORDER+=	pyrlrenderpm

.if !empty(PYRLRENDERPM_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.pyrlrenderpm+=	${PYPKGPREFIX}-reportlab-renderPM-[0-9]*
BUILDLINK_ABI_DEPENDS.pyrlrenderpm?=	${PYPKGPREFIX}-reportlab-renderPM>=0.9nb2
BUILDLINK_PKGSRCDIR.pyrlrenderpm?=	../../print/py-reportlab-renderPM
.endif	# PYRLRENDERPM_BUILDLINK3_MK

BUILDLINK_DEPTH:=				${BUILDLINK_DEPTH:S/+$//}
