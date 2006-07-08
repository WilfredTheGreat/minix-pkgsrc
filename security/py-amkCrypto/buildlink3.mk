# $NetBSD: buildlink3.mk,v 1.1 2006/07/04 15:33:13 drochner Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
PY24_AMKCRYPTO_BUILDLINK3_MK:=	${PY24_AMKCRYPTO_BUILDLINK3_MK}+

.include "../../lang/python/pyversion.mk"

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	py-amkCrypto
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Npy-amkCrypto}
BUILDLINK_PACKAGES+=	py-amkCrypto
BUILDLINK_ORDER+=	py-amkCrypto

.if ${PY24_AMKCRYPTO_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.py-amkCrypto+=	${PYPKGPREFIX}-amkCrypto>=2.0.1nb1
BUILDLINK_PKGSRCDIR.py-amkCrypto?=	../../security/py-amkCrypto
.endif	# PY24_AMKCRYPTO_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
