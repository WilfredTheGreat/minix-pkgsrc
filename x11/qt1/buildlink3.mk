# $NetBSD: buildlink3.mk,v 1.6 2006/04/12 10:27:43 rillig Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
QT1_BUILDLINK3_MK:=	${QT1_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	qt1
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nqt1}
BUILDLINK_PACKAGES+=	qt1
BUILDLINK_ORDER+=	qt1

.if !empty(QT1_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.qt1+=		qt1>=1.44
BUILDLINK_ABI_DEPENDS.qt1+=	qt1>=1.44nb3
BUILDLINK_PKGSRCDIR.qt1?=	../../x11/qt1

BUILDLINK_PASSTHRU_DIRS=	${LOCALBASE}/qt1
BUILDLINK_FILES.qt1+=		qt1/bin/*
BUILDLINK_TRANSFORM.qt1+=	-e s,/qt1/bin/,/bin/,

QT1DIR=				${LOCALBASE}/qt1
.endif	# QT1_BUILDLINK3_MK

.include "../../mk/x11.buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
