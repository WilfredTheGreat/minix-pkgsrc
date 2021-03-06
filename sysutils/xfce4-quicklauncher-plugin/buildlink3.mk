# $NetBSD: buildlink3.mk,v 1.25 2012/05/07 01:54:01 dholland Exp $

BUILDLINK_TREE+=	xfce4-quicklauncher-plugin

.if !defined(XFCE4_QUICKLAUNCHER_PLUGIN_BUILDLINK3_MK)
XFCE4_QUICKLAUNCHER_PLUGIN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xfce4-quicklauncher-plugin+=	xfce4-quicklauncher-plugin>=1.9.4
BUILDLINK_ABI_DEPENDS.xfce4-quicklauncher-plugin+=	xfce4-quicklauncher-plugin>=1.9.4nb10
BUILDLINK_PKGSRCDIR.xfce4-quicklauncher-plugin?=	../../sysutils/xfce4-quicklauncher-plugin

.include "../../x11/xfce4-panel/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.endif # XFCE4_QUICKLAUNCHER_PLUGIN_BUILDLINK3_MK

BUILDLINK_TREE+=	-xfce4-quicklauncher-plugin
