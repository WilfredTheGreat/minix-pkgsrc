# $NetBSD: buildlink3.mk,v 1.6 2006/04/12 10:27:38 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
AP2_PERL_BUILDLINK3_MK:=	${AP2_PERL_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	ap2-perl
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nap2-perl}
BUILDLINK_PACKAGES+=	ap2-perl
BUILDLINK_ORDER+=	ap2-perl

.if !empty(AP2_PERL_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.ap2-perl+=	ap2-perl>=2.0.1
BUILDLINK_ABI_DEPENDS.ap2-perl?=	ap2-perl>=2.0.1nb2
BUILDLINK_PKGSRCDIR.ap2-perl?=	../../www/ap2-perl
.endif	# AP2_PERL_BUILDLINK3_MK

.include "../../www/apache2/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
