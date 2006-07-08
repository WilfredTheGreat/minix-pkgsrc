# $NetBSD: buildlink3.mk,v 1.6 2006/04/12 10:27:33 rillig Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
GSS_BUILDLINK3_MK:=	${GSS_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	gss
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ngss}
BUILDLINK_PACKAGES+=	gss
BUILDLINK_ORDER+=	gss

.if !empty(GSS_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.gss+=		gss>=0.0.6nb1
BUILDLINK_ABI_DEPENDS.gss+=	gss>=0.0.13nb1
BUILDLINK_PKGSRCDIR.gss?=	../../security/gss
.endif	# GSS_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
