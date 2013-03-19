# $NetBSD$

BUILDLINK_TREE+=	schroedinger

.if !defined(SCHROEDINGER_BUILDLINK3_MK)
SCHROEDINGER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.schroedinger+=	schroedinger>=1.0.10
BUILDLINK_PKGSRCDIR.schroedinger?=	../../multimedia/schroedinger

.include "../../devel/orc/buildlink3.mk"
.endif	# SCHROEDINGER_BUILDLINK3_MK

BUILDLINK_TREE+=	-schroedinger
