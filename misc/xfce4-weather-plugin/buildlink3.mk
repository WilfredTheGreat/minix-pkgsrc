# $NetBSD: buildlink3.mk,v 1.25 2012/05/07 01:53:48 dholland Exp $

BUILDLINK_TREE+=	xfce4-weather-plugin

.if !defined(XFCE4_WEATHER_PLUGIN_BUILDLINK3_MK)
XFCE4_WEATHER_PLUGIN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xfce4-weather-plugin+=	xfce4-weather-plugin>=0.6.2
BUILDLINK_ABI_DEPENDS.xfce4-weather-plugin+=	xfce4-weather-plugin>=0.6.2nb12
BUILDLINK_PKGSRCDIR.xfce4-weather-plugin?=	../../misc/xfce4-weather-plugin

.include "../../x11/xfce4-panel/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.endif # XFCE4_WEATHER_PLUGIN_BUILDLINK3_MK

BUILDLINK_TREE+=	-xfce4-weather-plugin
