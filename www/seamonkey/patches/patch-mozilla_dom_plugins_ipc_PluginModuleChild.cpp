$NetBSD: patch-mozilla_dom_plugins_ipc_PluginModuleChild.cpp,v 1.2 2012/03/19 10:35:59 ryoon Exp $

--- mozilla/dom/plugins/ipc/PluginModuleChild.cpp.orig	2012-04-23 06:27:30.000000000 +0000
+++ mozilla/dom/plugins/ipc/PluginModuleChild.cpp
@@ -236,7 +236,7 @@ PluginModuleChild::Init(const std::strin
 
     // TODO: use PluginPRLibrary here
 
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
     mShutdownFunc =
         (NP_PLUGINSHUTDOWN) PR_FindFunctionSymbol(mLibrary, "NP_Shutdown");
 
@@ -1821,7 +1821,7 @@ PluginModuleChild::AnswerNP_GetEntryPoin
     PLUGIN_LOG_DEBUG_METHOD;
     AssertPluginThread();
 
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
     return true;
 #elif defined(OS_WIN) || defined(OS_MACOSX)
     *_retval = mGetEntryPointsFunc(&mFunctions);
@@ -1848,7 +1848,7 @@ PluginModuleChild::AnswerNP_Initialize(N
     SendBackUpXResources(FileDescriptor(xSocketFd, false/*don't close*/));
 #endif
 
-#if defined(OS_LINUX)
+#if defined(OS_LINUX) || defined(OS_BSD)
     *_retval = mInitializeFunc(&sBrowserFuncs, &mFunctions);
     return true;
 #elif defined(OS_WIN) || defined(OS_MACOSX)
