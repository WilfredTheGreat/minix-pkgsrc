# $NetBSD: buildlink3.mk,v 1.8 2012/03/03 00:12:11 wiz Exp $

BUILDLINK_TREE+=	vala

.if !defined(VALA_BUILDLINK3_MK)
VALA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.vala+=	vala>=0.10.1
BUILDLINK_ABI_DEPENDS.vala+=	vala>=0.12.1nb3
BUILDLINK_PKGSRCDIR.vala?=	../../lang/vala

VALAC=${LOCALBASE}/bin/valac-0.12
VAPIGEN=${LOCALBASE}/bin/vapigen-0.12
.if defined(GNU_CONFIGURE)
CONFIGURE_ENV+=	VALAC=${VALAC} VAPIGEN=${VAPIGEN}
.endif

.include "../../devel/glib2/buildlink3.mk"
.endif	# VALA_BUILDLINK3_MK

BUILDLINK_TREE+=	-vala
