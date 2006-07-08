# $NetBSD: buildlink3.mk,v 1.14 2006/05/09 22:28:18 wiz Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
PNG_BUILDLINK3_MK:=	${PNG_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	png
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Npng}
BUILDLINK_PACKAGES+=	png
BUILDLINK_ORDER+=	png

.if !empty(PNG_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.png+=		png>=1.2.4
BUILDLINK_ABI_DEPENDS.png?=	png>=1.2.9nb2
BUILDLINK_PKGSRCDIR.png?=	../../graphics/png

.   include "../../mk/bsd.prefs.mk"
# keep this in sync with the same code in Makefile
.  if ${MACHINE_ARCH} != "i386"
CPPFLAGS+=	-DPNG_NO_ASSEMBLER_CODE
.  endif
.endif	# PNG_BUILDLINK3_MK

.include "../../devel/zlib/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
