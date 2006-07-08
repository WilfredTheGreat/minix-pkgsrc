# $NetBSD: buildlink3.mk,v 1.5 2006/04/12 10:27:28 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBDVDPLAY_BUILDLINK3_MK:=	${LIBDVDPLAY_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libdvdplay
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibdvdplay}
BUILDLINK_PACKAGES+=	libdvdplay
BUILDLINK_ORDER+=	libdvdplay

.if !empty(LIBDVDPLAY_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libdvdplay+=		libdvdplay>=1.0.1
BUILDLINK_ABI_DEPENDS.libdvdplay+=	libdvdplay>=1.0.1nb3
BUILDLINK_PKGSRCDIR.libdvdplay?=	../../multimedia/libdvdplay
.endif	# LIBDVDPLAY_BUILDLINK3_MK

.include "../../multimedia/libdvdread/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
