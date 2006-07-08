# $NetBSD: buildlink3.mk,v 1.7 2006/05/21 16:34:19 rillig Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
SWIG_BUILDLINK3_MK:=	${SWIG_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	swig
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nswig}
BUILDLINK_PACKAGES+=	swig
BUILDLINK_ORDER+=	swig

.if !empty(SWIG_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.swig+=	swig>=1.3.24
BUILDLINK_ABI_DEPENDS.swig+=	swig>=1.3.29
BUILDLINK_PKGSRCDIR.swig?=	../../devel/swig
# only contains a static library
BUILDLINK_DEPMETHOD.swig?=	build

BUILDLINK_FILES.swig+=		share/swig/1.3/* share/swig/1.3/*/*
.endif	# SWIG_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
