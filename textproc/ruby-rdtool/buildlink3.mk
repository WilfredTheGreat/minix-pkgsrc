# $NetBSD: buildlink3.mk,v 1.7 2006/04/12 10:27:38 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+

RUBY_RDTOOL_BUILDLINK3_MK:=	${RUBY_RDTOOL_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	${RUBY_PKGPREFIX}-rdtool
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:N${RUBY_PKGPREFIX}-rdtool}
BUILDLINK_PACKAGES+=	${RUBY_PKGPREFIX}-rdtool
BUILDLINK_ORDER+=	${RUBY_PKGPREFIX}-rdtool

.if !empty(RUBY_RDTOOL_BUILDLINK3_MK:M+)

RUBY_RD=		rd2
RUBY_RD_VERSION =	0.6.18
RUBY_RD_REQD=		0.6.14

# create string for dependency list
RUBY_RD_LIST=	${RUBY_VERSION_LIST:C/([1-9][0-9]*)/ruby&-rdtool/g}

BUILDLINK_FILES.ruby18-rdtool+=		bin/rd2
BUILDLINK_DEPMETHOD.ruby18-rdtool?=	build
BUILDLINK_API_DEPENDS.ruby18-rdtool+=	{${RUBY_RD_LIST}}>=0.6.14
BUILDLINK_PKGSRCDIR.ruby18-rdtool?=	../../textproc/ruby-rdtool
.endif

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
