$NetBSD$

Add missing header.

--- src/screen.cpp.orig	2005-10-03 05:57:31.000000000 +0000
+++ src/screen.cpp
@@ -8,6 +8,7 @@
 #include <cstdarg>
 #include <cfloat>
 #include "u4.h"
+#include <string.h>
 
 #include "screen.h"
 
