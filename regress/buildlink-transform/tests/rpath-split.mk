# $NetBSD$

.PHONY: rpath-split
do-regress: rpath-split
rpath-split:
	@test="${COMPILER_RPATH_FLAG}${LOCALBASE}/lib:${LOCALBASE}/lib/foo"; \
	case "${_USE_RPATH}" in						\
	[yY][eE][sS])							\
		expected="${COMPILER_RPATH_FLAG}${LOCALBASE}/lib ${COMPILER_RPATH_FLAG}${LOCALBASE}/lib/foo"; \
		;;							\
	*)								\
		expected="";						\
		;;							\
	esac;								\
	${TEST_RESULT}
