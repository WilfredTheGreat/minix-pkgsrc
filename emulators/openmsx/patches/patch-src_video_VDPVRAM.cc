$NetBSD$

--- src/video/VDPVRAM.cc.orig	2011-11-24 02:47:51.000000000 +0000
+++ src/video/VDPVRAM.cc
@@ -4,6 +4,7 @@
 #include "SpriteChecker.hh"
 #include "Renderer.hh"
 #include "Math.hh"
+#include <cstring>
 
 namespace openmsx {
 
