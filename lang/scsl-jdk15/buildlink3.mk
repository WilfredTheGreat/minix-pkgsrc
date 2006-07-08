# $NetBSD: buildlink3.mk,v 1.3 2006/06/18 08:51:11 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
SCSL_JDK15_BUILDLINK3_MK:=	${SCSL_JDK15_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	scsl-jdk15
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nscsl-jdk15}
BUILDLINK_PACKAGES+=	scsl-jdk15
BUILDLINK_ORDER+=	scsl-jdk15

.if !empty(SCSL_JDK15_BUILDLINK3_MK:M+)

BUILDLINK_API_DEPENDS.scsl-jdk15+=	scsl-jdk15-[0-9]*
BUILDLINK_ABI_DEPENDS.scsl-jdk15+=	scsl-jdk15>=1.5.0
BUILDLINK_PKGSRCDIR.scsl-jdk15?=	../../lang/scsl-jdk15
BUILDLINK_DEPMETHOD.scsl-jdk15?= build

BUILDLINK_PASSTHRU_DIRS+=	${BUILDLINK_JAVA_PREFIX.scsl-jre15}

BUILDLINK_CPPFLAGS.scsl-jdk15=						\
	-I${BUILDLINK_JAVA_PREFIX.scsl-jre15}/include			\
	-I${BUILDLINK_JAVA_PREFIX.scsl-jre15}/include/${LOWER_OPSYS}

.include "../../lang/scsl-jre15/buildlink3.mk"

.endif	# SCSL_JDK15_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
