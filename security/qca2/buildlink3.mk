# $NetBSD: buildlink3.mk,v 1.13 2012/01/13 10:55:31 obache Exp $
#

BUILDLINK_TREE+=	qca2

.if !defined(QCA2_BUILDLINK3_MK)
QCA2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qca2+=	qca2>=2.0.0
BUILDLINK_ABI_DEPENDS.qca2?=	qca2>=2.0.3nb5
BUILDLINK_PKGSRCDIR.qca2?=	../../security/qca2

.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.endif # QCA2_BUILDLINK3_MK

BUILDLINK_TREE+=	-qca2
