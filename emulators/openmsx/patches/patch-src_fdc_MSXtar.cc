$NetBSD$

--- src/fdc/MSXtar.cc.orig	2007-04-14 21:25:24.000000000 +0000
+++ src/fdc/MSXtar.cc
@@ -14,6 +14,7 @@
 #include <cstdlib>
 #include <algorithm>
 #include <cassert>
+#include <cstring>
 
 using std::string;
 
