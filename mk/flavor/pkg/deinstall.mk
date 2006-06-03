# $NetBSD$

# Set the appropriate flags to pass to pkg_delete(1) based on the value
# of DEINSTALLDEPENDS (see pkgsrc/mk/install/deinstall.mk).
#
.if defined(DEINSTALLDEPENDS)
.  if empty(DEINSTALLDEPENDS:M[nN][oO])
.    if !empty(DEINSTALLDEPENDS:M[aA][lL][lL)
_PKG_ARGS_DEINSTALL+=	-r	# for "update" target
.    else
_PKG_ARGS_DEINSTALL+=	-r -R	# for removing stuff in bulk builds
.    endif
.  endif
.endif

.if defined(PKG_VERBOSE)
_PKG_ARGS_DEINSTALL+=	-v
.endif

.if defined(PKG_PRESERVE)
.  if !empty(UPDATE_RUNNING:M[yY][eE][sS])
_PKG_ARGS_DEINSTALL+=	-N -f	# update w/o removing any files
.  endif
.endif

######################################################################
### deinstall-pkg (PRIVATE, pkgsrc/mk/install/deinstall.mk)
######################################################################
### deinstall-pkg removes the package from the system.
###
deinstall-pkg:
	${_PKG_SILENT}${_PKG_DEBUG}					\
	found="`${PKG_INFO} -e \"${PKGNAME}\" || ${TRUE}`";		\
	case "$$found" in						\
	"") found="`${_PKG_BEST_EXISTS} ${PKGWILDCARD:Q} || ${TRUE}`" ;; \
	esac;								\
	if ${TEST} -n "$$found"; then					\
		${ECHO} "Running ${PKG_DELETE} ${_PKG_ARGS_DEINSTALL} $$found"; \
		${PKG_DELETE} ${_PKG_ARGS_DEINSTALL} "$$found" || ${TRUE} ; \
	fi
.if defined(DEINSTALLDEPENDS) && !empty(DEINSTALLDEPENDS:M[yY][eE][sS])
.  for _pkg_ in ${BUILD_DEPENDS:C/:.*$//}
	${_PKG_SILENT}${_PKG_DEBUG}					\
	found="`${_PKG_BEST_EXISTS} ${_pkg_:Q} || ${TRUE}`";		\
	if ${TEST} -n "$$found"; then					\
		${ECHO} "Running ${PKG_DELETE} ${_PKG_ARGS_DEINSTALL} $$found"; \
		${PKG_DELETE} ${_PKG_ARGS_DEINSTALL} "$$found" || ${TRUE}; \
	fi
.  endfor
.endif
