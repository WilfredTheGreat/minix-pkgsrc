$NetBSD$

--- src/cite/actionmanager.cpp.orig	2011-12-05 20:46:03.000000000 +0000
+++ src/cite/actionmanager.cpp
@@ -20,7 +20,7 @@
 
 using Tellico::Cite::ActionManager;
 
-ActionManager::ActionManager* ActionManager::self() {
+ActionManager* ActionManager::self() {
   static ActionManager self;
   return &self;
 }
