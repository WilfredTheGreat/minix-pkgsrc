$NetBSD$

--- include/atalk/dsi.h.orig	2010-09-20 08:32:27.000000000 +0000
+++ include/atalk/dsi.h
@@ -11,6 +11,7 @@
 #include <sys/time.h>
 #include <signal.h>
 
+#include <sys/socket.h>
 #include <netinet/in.h>
 #include <atalk/afp.h>
 #include <atalk/server_child.h>
