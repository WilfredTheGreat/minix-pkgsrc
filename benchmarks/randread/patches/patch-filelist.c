$NetBSD$

--- filelist.c.orig	2002-09-11 05:15:12.000000000 +0000
+++ filelist.c
@@ -7,9 +7,10 @@
 
 #include <errno.h>
 #include <fcntl.h>
+#include <limits.h>
 #include <stdio.h>
 #include <stdlib.h>
-#include <strings.h>
+#include <string.h>
 #include <unistd.h>
 
 #include "filelist.h"
