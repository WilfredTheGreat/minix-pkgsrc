# $NetBSD: buildlink3.mk,v 1.7 2006/06/12 16:28:05 wiz Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
SDLMM_BUILDLINK3_MK:=	${SDLMM_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	SDLmm
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NSDLmm}
BUILDLINK_PACKAGES+=	SDLmm
BUILDLINK_ORDER+=	SDLmm

.if !empty(SDLMM_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.SDLmm+=	SDLmm>=0.1.8nb1
BUILDLINK_ABI_DEPENDS.SDLmm?=	SDLmm>=0.1.8nb6
BUILDLINK_PKGSRCDIR.SDLmm?=	../../devel/SDLmm
.endif	# SDLMM_BUILDLINK3_MK

.include "../../devel/SDL/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
