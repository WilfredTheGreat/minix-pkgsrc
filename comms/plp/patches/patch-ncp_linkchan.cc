$NetBSD$

Update for C++ changes.

--- ncp/linkchan.cc.orig	1999-04-12 21:16:52.000000000 +0000
+++ ncp/linkchan.cc
@@ -19,7 +19,8 @@
 //
 //  e-mail philip.proudman@btinternet.com
 
-#include <stream.h>
+#include <iostream>
+using namespace std;
 
 #include "linkchan.h"
 #include "bufferstore.h"
