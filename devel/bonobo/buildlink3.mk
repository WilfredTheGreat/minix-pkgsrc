# $NetBSD: buildlink3.mk,v 1.6 2006/04/17 13:46:02 wiz Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
BONOBO_BUILDLINK3_MK:=	${BONOBO_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	bonobo
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nbonobo}
BUILDLINK_PACKAGES+=	bonobo
BUILDLINK_ORDER+=	bonobo

.if !empty(BONOBO_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.bonobo+=	bonobo>=1.0.18nb7
BUILDLINK_ABI_DEPENDS.bonobo+=	bonobo>=1.0.22nb2
BUILDLINK_PKGSRCDIR.bonobo?=	../../devel/bonobo
.endif	# BONOBO_BUILDLINK3_MK

.include "../../graphics/gdk-pixbuf-gnome/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../print/gnome-print/buildlink3.mk"
.include "../../textproc/libxml/buildlink3.mk"
.include "../../devel/popt/buildlink3.mk"
.include "../../devel/oaf/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
