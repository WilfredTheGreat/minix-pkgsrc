# $NetBSD$
#
# This Makefile fragment is included by packages that use lcms.
#
# To use this Makefile fragment, simply:
#
# (1) Optionally define LCMS_REQD to the version of lcms desired.
# (2) Include this Makefile fragment in the package Makefile,
# (3) Add ${BUILDLINK_DIR}/include to the front of the C preprocessor's header
#     search path, and
# (4) Add ${BUILDLINK_DIR}/lib to the front of the linker's library search
#     path.

.if !defined(LCMS_BUILDLINK_MK)
LCMS_BUILDLINK_MK=	# defined

LCMS_REQD?=		1.06
DEPENDS+=		lcms>=${LCMS_REQD}:../../graphics/lcms

BUILDLINK_PREFIX.lcms=	${LOCALBASE}
BUILDLINK_FILES.lcms=	include/lcms/*
BUILDLINK_FILES.lcms+=	lib/liblcms.*

BUILDLINK_TARGETS.lcms=	lcms-buildlink
BUILDLINK_TARGETS+=	${BUILDLINK_TARGETS.lcms}

pre-configure: ${BUILDLINK_TARGETS.lcms}
lcms-buildlink: _BUILDLINK_USE

.include "../../mk/bsd.buildlink.mk"

.endif	# LCMS_BUILDLINK_MK
