# $NetBSD: buildlink3.mk,v 1.9 2004/11/23 20:17:55 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
APACHE_BUILDLINK3_MK:=	${APACHE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	apache
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Napache}
BUILDLINK_PACKAGES+=	apache

.if !empty(APACHE_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.apache+=	apache>=2.0.51
BUILDLINK_RECOMMENDED.apache+=	apache>=2.0.52nb2
BUILDLINK_PKGSRCDIR.apache?=	../../www/apache2
BUILDLINK_DEPMETHOD.apache?=	build
.  if defined(APACHE_MODULE)
BUILDLINK_DEPMETHOD.apache+=	full
.  endif
.endif	# APACHE_BUILDLINK3_MK

USE_PERL5?=	build			# for "apxs"
CONFIGURE_ENV+=	APR_LIBTOOL=${LIBTOOL}	# make apxs use the libtool we specify
MAKE_ENV+=	APR_LIBTOOL=${LIBTOOL}
APXS?=		${BUILDLINK_PREFIX.apache}/sbin/apxs

.if !empty(APACHE_BUILDLINK3_MK:M+)
.  if defined(GNU_CONFIGURE)
CONFIGURE_ARGS+=	--with-apxs2="${APXS}"
.  endif
.endif	# APACHE_BUILDLINK3_MK

.include "../../devel/apr/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
