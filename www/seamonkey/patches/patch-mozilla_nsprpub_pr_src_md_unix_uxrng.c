$NetBSD: patch-mozilla_nsprpub_pr_src_md_unix_uxrng.c,v 1.2 2012/03/19 10:36:00 ryoon Exp $

--- mozilla/nsprpub/pr/src/md/unix/uxrng.c.orig	2012-04-23 06:28:14.000000000 +0000
+++ mozilla/nsprpub/pr/src/md/unix/uxrng.c
@@ -126,7 +126,7 @@ GetHighResClock(void *buf, size_t maxbyt
 
 #elif (defined(LINUX) || defined(FREEBSD) || defined(__FreeBSD_kernel__) \
     || defined(NETBSD) || defined(__NetBSD_kernel__) || defined(OPENBSD) \
-    || defined(SYMBIAN))
+    || defined(SYMBIAN)) || defined(__DragonFly__)
 #include <sys/types.h>
 #include <sys/stat.h>
 #include <fcntl.h>
