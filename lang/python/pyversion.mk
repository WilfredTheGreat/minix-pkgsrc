# $NetBSD: pyversion.mk,v 1.7 2002/01/29 19:21:58 drochner Exp $

.if !defined(PYTHON_PYVERSION_MK)
PYTHON_PYVERSION_MK=	defined

.include "../../mk/bsd.prefs.mk"

PYTHON_VERSION_DEFAULT?=	21
PYTHON_VERSIONS_ACCEPTED?=	22 21 20

BUILDLINK_DEPENDS.python15?=	python15>=1.5
BUILDLINK_DEPENDS.python20?=	python20>=2.0
BUILDLINK_DEPENDS.python21?=	python21>=2.1
BUILDLINK_DEPENDS.python22?=	python22>=2.2

# transform the list into individual variables
.for pv in ${PYTHON_VERSIONS_ACCEPTED}
_PYTHON_VERSION_${pv}_OK=	yes
.endfor

# check what is installed
.if exists(${LOCALBASE}/bin/python2.2)
_PYTHON_VERSION_22_INSTALLED=	yes
.endif
.if exists(${LOCALBASE}/bin/python2.1)
_PYTHON_VERSION_21_INSTALLED=	yes
.endif
.if exists(${LOCALBASE}/bin/python2.0)
_PYTHON_VERSION_20_INSTALLED=	yes
.endif
.if exists(${LOCALBASE}/bin/python1.5)
_PYTHON_VERSION_15_INSTALLED=	yes
.endif

#
# choose a python version where to add,
# try to be intelligent
#
# if a version is explicitely required, take it
.if defined(PYTHON_VERSION_REQD)
_PYTHON_VERSION=	${PYTHON_VERSION_REQD}
.endif
# if the default is already installed, it is first choice
.if !defined(_PYTHON_VERSION)
.if defined(_PYTHON_VERSION_${PYTHON_VERSION_DEFAULT}_OK)
.if defined(_PYTHON_VERSION_${PYTHON_VERSION_DEFAULT}_INSTALLED)
_PYTHON_VERSION=	${PYTHON_VERSION_DEFAULT}
.endif
.endif
.endif
# prefer an already installed version, in order of "accepted"
.if !defined(_PYTHON_VERSION)
.for pv in ${PYTHON_VERSIONS_ACCEPTED}
.if defined(_PYTHON_VERSION_${pv}_INSTALLED)
_PYTHON_VERSION?=	${pv}
.else
# keep information as last resort - see below
_PYTHON_VERSION_FIRSTACCEPTED?=	${pv}
.endif
.endfor
.endif
# if the default is OK for the addon pkg, take this
.if !defined(_PYTHON_VERSION)
.if defined(_PYTHON_VERSION_${PYTHON_VERSION_DEFAULT}_OK)
_PYTHON_VERSION=	${PYTHON_VERSION_DEFAULT}
.endif
.endif
# take the first one accepted by the package
.if !defined(_PYTHON_VERSION)
_PYTHON_VERSION=	${_PYTHON_VERSION_FIRSTACCEPTED}
.endif

#
# set variables for the version we decided to use:
#  PYVERSSUFFIX: suffix to executables and in library path,
#                equal to sys.version[0:3]
#  PYPKGPREFIX: prefix to use in PKGNAME for extensions which can install
#               to multiple Python versions
#
.if ${_PYTHON_VERSION} == "22"
PYDEPENDENCY=	${BUILDLINK_DEPENDS.python22}:../../lang/python22
PYVERSSUFFIX=	2.2
PYPKGPREFIX=	py22
.elif ${_PYTHON_VERSION} == "21"
PYDEPENDENCY=	${BUILDLINK_DEPENDS.python21}:../../lang/python21
PYVERSSUFFIX=	2.1
PYPKGPREFIX=	py21
.elif ${_PYTHON_VERSION} == "20"
PYDEPENDENCY=	${BUILDLINK_DEPENDS.python20}:../../lang/python20
PYVERSSUFFIX=	2.0
PYPKGPREFIX=	py20
.elif ${_PYTHON_VERSION} == "15"
PYDEPENDENCY=	${BUILDLINK_DEPENDS.python15}:../../lang/python15
PYVERSSUFFIX=	1.5
PYPKGPREFIX=	py15
.if !defined(PYTHON_DISTUTILS_BOOTSTRAP)
BUILD_DEPENDS+=	py15-distutils-*:../../devel/py-distutils
.endif
.else
# force an error
	error: no valid Python version
.endif

PYTHONBIN=	${LOCALBASE}/bin/python${PYVERSSUFFIX}
.if defined(PYTHON_FOR_BUILD_ONLY)
BUILD_DEPENDS+=	${PYDEPENDENCY}
.else
DEPENDS+=	${PYDEPENDENCY}
.endif

.endif	# PYTHON_PYVERSION_MK
