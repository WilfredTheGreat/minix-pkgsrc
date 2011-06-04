$NetBSD: patch-ae,v 1.2 2010/09/21 15:57:30 taca Exp $

* Portability: include <bstring.h> if exists.

--- client/mysqlbinlog.cc.orig	2010-02-04 11:36:52.000000000 +0000
+++ client/mysqlbinlog.cc
@@ -35,6 +35,9 @@
 #include "log_event.h"
 #include "sql_common.h"
 #include <welcome_copyright_notice.h> // ORACLE_WELCOME_COPYRIGHT_NOTICE
+#ifdef NEEDS_BSTRING_H
+#include <bstring.h> /* defines bzero() */
+#endif
 
 #define BIN_LOG_HEADER_SIZE	4
 #define PROBE_HEADER_LEN	(EVENT_LEN_OFFSET+4)
