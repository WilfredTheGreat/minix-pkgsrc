# $NetBSD: buildlink3.mk,v 1.10 2006/04/25 12:45:57 salo Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
NESSUS_CORE_BUILDLINK3_MK:=	${NESSUS_CORE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	nessus-core
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nnessus-core}
BUILDLINK_PACKAGES+=	nessus-core
BUILDLINK_ORDER+=	nessus-core

.if !empty(NESSUS_CORE_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.nessus-core+=	nessus-core>=2.2.7
BUILDLINK_ABI_DEPENDS.nessus-core?=	nessus-core>=2.2.7
BUILDLINK_PKGSRCDIR.nessus-core?=	../../security/nessus-core
.endif	# NESSUS_CORE_BUILDLINK3_MK

.include "../../security/libnasl/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
