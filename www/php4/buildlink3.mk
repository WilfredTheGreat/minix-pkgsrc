# $NetBSD: buildlink3.mk,v 1.10 2006/04/12 10:27:39 rillig Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
PHP_BUILDLINK3_MK:=	${PHP_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	php
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nphp}
BUILDLINK_PACKAGES+=	php
BUILDLINK_ORDER+=	php

.if !empty(PHP_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.php+=		php-4.4.*
BUILDLINK_ABI_DEPENDS.php+=	php>=4.4.1nb3
BUILDLINK_PKGSRCDIR.php?=	../../www/php4
.endif	# PHP_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
