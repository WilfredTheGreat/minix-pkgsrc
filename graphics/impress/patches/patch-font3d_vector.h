$NetBSD$

--- font3d/vector.h.orig	2011-11-25 18:27:15.000000000 +0000
+++ font3d/vector.h
@@ -73,7 +73,9 @@
 #define __VECTOR_H__
 
 #include <math.h>
-#include <iostream.h>
+#include <iostream>
+
+using namespace std;
 
    class vector
    {
