# $NetBSD: buildlink3.mk,v 1.30 2012/05/07 01:53:52 dholland Exp $

BUILDLINK_TREE+=	kdenetwork

.if !defined(KDENETWORK_BUILDLINK3_MK)
KDENETWORK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.kdenetwork+=	kdenetwork>=3.5.0nb1
BUILDLINK_ABI_DEPENDS.kdenetwork+=	kdenetwork>=3.5.10nb18
BUILDLINK_PKGSRCDIR.kdenetwork?=	../../net/kdenetwork3

.include "../../converters/uulib/buildlink3.mk"
.include "../../databases/gdbm/buildlink3.mk"
.include "../../devel/libidn/buildlink3.mk"
.include "../../net/openslp/buildlink3.mk"
.include "../../x11/kdebase3/buildlink3.mk"
.include "../../x11/kdelibs3/buildlink3.mk"
.endif # KDENETWORK_BUILDLINK3_MK

BUILDLINK_TREE+=	-kdenetwork
