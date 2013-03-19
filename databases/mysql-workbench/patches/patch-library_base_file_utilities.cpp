$NetBSD$

--- library/base/file_utilities.cpp.orig	2011-03-17 12:48:44.000000000 +0000
+++ library/base/file_utilities.cpp
@@ -31,6 +31,9 @@
 #include <fcntl.h>
 #include <sys/file.h>
 #endif
+#ifdef __DragonFly__
+#include <sys/stat.h>
+#endif
 
 namespace base {
 
