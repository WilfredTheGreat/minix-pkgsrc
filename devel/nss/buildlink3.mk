# $NetBSD$

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
NSS_BUILDLINK3_MK:=	${NSS_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	nss
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nnss}
BUILDLINK_PACKAGES+=	nss

.if !empty(NSS_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.nss+=		nss>=3.9.2
BUILDLINK_RECOMMENDED.nss+=	nss>=3.9.2
BUILDLINK_PKGSRCDIR.nss?=	../../devel/nss
.endif  # NSS_BUILDLINK3_MK

.include "../../devel/nspr/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
