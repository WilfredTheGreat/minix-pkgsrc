# $NetBSD: buildlink3.mk,v 1.5 2012/03/03 00:12:14 wiz Exp $

BUILDLINK_TREE+=	gdk-pixbuf2

.if !defined(GDK_PIXBUF2_BUILDLINK3_MK)
GDK_PIXBUF2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gdk-pixbuf2+=	gdk-pixbuf2>=2.22.0
BUILDLINK_ABI_DEPENDS.gdk-pixbuf2+=	gdk-pixbuf2>=2.24.1nb3
BUILDLINK_PKGSRCDIR.gdk-pixbuf2?=	../../graphics/gdk-pixbuf2

.include "../../devel/glib2/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.endif	# GDK_PIXBUF2_BUILDLINK3_MK

BUILDLINK_TREE+=	-gdk-pixbuf2
