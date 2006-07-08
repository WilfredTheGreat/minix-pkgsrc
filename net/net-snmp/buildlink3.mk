# $NetBSD: buildlink3.mk,v 1.9 2006/04/12 10:27:30 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
NET_SNMP_BUILDLINK3_MK:=	${NET_SNMP_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	net-snmp
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nnet-snmp}
BUILDLINK_PACKAGES+=	net-snmp
BUILDLINK_ORDER+=	net-snmp

.if !empty(NET_SNMP_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.net-snmp+=	net-snmp>=5.0.9nb3
BUILDLINK_ABI_DEPENDS.net-snmp+=	net-snmp>=5.2.1.2
BUILDLINK_PKGSRCDIR.net-snmp?=	../../net/net-snmp
.endif	# NET_SNMP_BUILDLINK3_MK

.include "../../security/tcp_wrappers/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
