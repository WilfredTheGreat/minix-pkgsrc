# $NetBSD: buildlink3.mk,v 1.15 2009/03/20 19:25:07 joerg Exp $

BUILDLINK_TREE+=	ORBit2

.if !defined(ORBIT2_BUILDLINK3_MK)
ORBIT2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ORBit2+=	ORBit2>=2.12.0
BUILDLINK_ABI_DEPENDS.ORBit2?=	ORBit2>=2.12.4nb1
BUILDLINK_PKGSRCDIR.ORBit2?=	../../net/ORBit2

.include "../../devel/glib2/buildlink3.mk"
.include "../../net/libIDL/buildlink3.mk"
.endif # ORBIT2_BUILDLINK3_MK

BUILDLINK_TREE+=	-ORBit2
