# $NetBSD: buildlink3.mk,v 1.5 2006/04/12 10:27:22 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
SUN_JDK13_BUILDLINK3_MK:=	${SUN_JDK13_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	sun-jdk13
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nsun-jdk13}
BUILDLINK_PACKAGES+=	sun-jdk13
BUILDLINK_ORDER+=	sun-jdk13

.if !empty(SUN_JDK13_BUILDLINK3_MK:M+)

BUILDLINK_API_DEPENDS.sun-jdk13+=	sun-jdk13-[0-9]*
BUILDLINK_ABI_DEPENDS.sun-jdk13?=	sun-jdk13>=1.0.17nb1
BUILDLINK_PKGSRCDIR.sun-jdk13?=	../../lang/sun-jdk13
BUILDLINK_DEPMETHOD.sun-jdk13?= build

BUILDLINK_PASSTHRU_DIRS+=	${BUILDLINK_JAVA_PREFIX.sun-jre13}

BUILDLINK_CPPFLAGS.sun-jdk13=						\
	-I${BUILDLINK_JAVA_PREFIX.sun-jre13}/include			\
	-I${BUILDLINK_JAVA_PREFIX.sun-jre13}/include/linux

.include "../../lang/sun-jre13/buildlink3.mk"

.endif	# SUN_JDK13_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
