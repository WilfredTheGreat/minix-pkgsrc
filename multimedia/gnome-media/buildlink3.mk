# $NetBSD: buildlink3.mk,v 1.17 2012/05/07 01:53:48 dholland Exp $

BUILDLINK_TREE+=	gnome-media

.if !defined(GNOME_MEDIA_BUILDLINK3_MK)
GNOME_MEDIA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnome-media+=		gnome-media>=2.12.0nb1
BUILDLINK_ABI_DEPENDS.gnome-media+=	gnome-media>=2.28.5nb13
BUILDLINK_PKGSRCDIR.gnome-media?=	../../multimedia/gnome-media

.include "../../devel/GConf-ui/buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../multimedia/gstreamer0.10/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif # GNOME_MEDIA_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnome-media
