$NetBSD$

* require string.h for strlen(3).

--- text.c.orig	1998-01-29 00:45:34.000000000 +0000
+++ text.c
@@ -6,6 +6,7 @@
 */
 
 #include <X11/Xlib.h>
+#include <string.h>
 #include "text.h"
 
 int FontHeight(XFontStruct *font_struct)
