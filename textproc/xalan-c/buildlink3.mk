# $NetBSD: buildlink3.mk,v 1.7 2006/04/12 10:27:38 rillig Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
XALAN_C_BUILDLINK3_MK:=	${XALAN_C_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	xalan-c
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nxalan-c}
BUILDLINK_PACKAGES+=	xalan-c
BUILDLINK_ORDER+=	xalan-c

.if !empty(XALAN_C_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.xalan-c+=	xalan-c>=1.6nb3
BUILDLINK_ABI_DEPENDS.xalan-c?=	xalan-c>=1.6nb4
BUILDLINK_PKGSRCDIR.xalan-c?=	../../textproc/xalan-c
.endif	# XALAN_C_BUILDLINK3_MK

.include "../../textproc/icu/buildlink3.mk"
.include "../../textproc/xerces-c/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
