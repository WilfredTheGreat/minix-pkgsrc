# $NetBSD: buildlink3.mk,v 1.9 2004/05/17 21:32:34 seb Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBPERL_BUILDLINK3_MK:=	${LIBPERL_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libperl
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibperl}
BUILDLINK_PACKAGES+=	libperl

.if !empty(LIBPERL_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libperl+=	{libperl>=${LIBPERL5_REQD},perl{,-thread}>=5.8.0}
BUILDLINK_PKGSRCDIR.libperl?=	../../lang/libperl
.endif	# LIBPERL_BUILDLINK3_MK

LIBPERL5_REQD?=		${_PERL5_REQD}

.include "../../lang/perl5/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
