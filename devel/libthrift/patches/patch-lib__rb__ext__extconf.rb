$NetBSD$

Disable -Werror so that strlcpy can be detected on SunOS.
--- lib/rb/ext/extconf.rb.orig	2011-08-11 13:19:13.000000000 +0000
+++ lib/rb/ext/extconf.rb
@@ -22,7 +22,7 @@ if defined?(RUBY_ENGINE) && RUBY_ENGINE 
 else
   require 'mkmf'
 
-  $CFLAGS = "-g -O2 -Wall -Werror"
+  $CFLAGS = "-g -O2 -Wall"
 
   have_func("strlcpy", "string.h")
 
