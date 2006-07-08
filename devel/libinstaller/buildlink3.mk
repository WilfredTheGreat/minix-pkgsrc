# $NetBSD: buildlink3.mk,v 1.4 2006/04/12 10:27:10 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBINSTALLER_BUILDLINK3_MK:=	${LIBINSTALLER_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libinstaller
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibinstaller}
BUILDLINK_PACKAGES+=	libinstaller
BUILDLINK_ORDER+=	libinstaller

.if !empty(LIBINSTALLER_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libinstaller+=	libinstaller>=5.1
BUILDLINK_PKGSRCDIR.libinstaller?=	../../devel/libinstaller
.endif	# LIBINSTALLER_BUILDLINK3_MK

.include "../../devel/libaura/buildlink3.mk"
.include "../../devel/libdfui/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
