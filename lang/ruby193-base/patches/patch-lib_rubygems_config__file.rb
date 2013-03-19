$NetBSD: patch-lib_rubygems_config__file.rb,v 1.1.1.1 2011/11/08 16:10:51 taca Exp $

Don't hard code config file's path for gem.

--- lib/rubygems/config_file.rb.orig	2012-04-19 23:38:41.000000000 +0000
+++ lib/rubygems/config_file.rb
@@ -47,32 +47,7 @@ class Gem::ConfigFile
 
   PLATFORM_DEFAULTS = {}
 
-  system_config_path =
-    begin
-      require "etc"
-      Etc.sysconfdir
-    rescue LoadError, NoMethodError
-      begin
-        # TODO: remove after we drop 1.8.7 and 1.9.1
-        require 'Win32API'
-
-        CSIDL_COMMON_APPDATA = 0x0023
-        path = 0.chr * 260
-        if RUBY_VERSION > '1.9' then
-          SHGetFolderPath = Win32API.new 'shell32', 'SHGetFolderPath', 'PLPLP',
-          'L', :stdcall
-          SHGetFolderPath.call nil, CSIDL_COMMON_APPDATA, nil, 1, path
-        else
-          SHGetFolderPath = Win32API.new 'shell32', 'SHGetFolderPath', 'LLLLP',
-          'L'
-          SHGetFolderPath.call 0, CSIDL_COMMON_APPDATA, 0, 1, path
-        end
-
-        path.strip
-      rescue LoadError
-        RbConfig::CONFIG["sysconfdir"] || "/etc"
-      end
-    end
+  system_config_path = '@PKG_SYSCONFDIR@'
 
   SYSTEM_WIDE_CONFIG_FILE = File.join system_config_path, 'gemrc'
 
