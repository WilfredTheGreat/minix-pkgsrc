# $NetBSD: buildlink3.mk,v 1.9 2009/03/20 19:25:32 joerg Exp $

BUILDLINK_TREE+=	${RUBY_PKGPREFIX}-eruby

.if !defined(RUBY_ERUBY_BUILDLINK3_MK)
RUBY_ERUBY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.${RUBY_PKGPREFIX}-eruby+=	${RUBY_PKGPREFIX}-eruby>=0.9.7
BUILDLINK_PKGSRCDIR.${RUBY_PKGPREFIX}-eruby?=	../../textproc/ruby-eruby
.endif # RUBY_ERUBY_BUILDLINK3_MK

BUILDLINK_TREE+=	-${RUBY_PKGPREFIX}-eruby
