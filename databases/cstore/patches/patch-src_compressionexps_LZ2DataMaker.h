$NetBSD$

Add missing header.

--- src/compressionexps/LZ2DataMaker.h.orig	2006-10-17 19:36:03.000000000 +0000
+++ src/compressionexps/LZ2DataMaker.h
@@ -57,7 +57,7 @@
 #include "../AM/PagePlacer.h"
 #include <ctime>
 #include "../UnitTests/UnitTest.h"
-#include <fstream.h>
+#include <fstream>
 
 class LZ2DataMaker : public UnitTest
 {
