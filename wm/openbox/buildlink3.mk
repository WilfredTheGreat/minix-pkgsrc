# $NetBSD: buildlink3.mk,v 1.14 2011/11/01 06:02:43 sbd Exp $

BUILDLINK_TREE+=	openbox

.if !defined(OPENBOX_BUILDLINK3_MK)
OPENBOX_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.openbox+=	openbox>=3.1
BUILDLINK_ABI_DEPENDS.openbox+=	openbox>=3.5.0nb2
BUILDLINK_PKGSRCDIR.openbox?=	../../wm/openbox

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.endif # OPENBOX_BUILDLINK3_MK

BUILDLINK_TREE+=	-openbox
