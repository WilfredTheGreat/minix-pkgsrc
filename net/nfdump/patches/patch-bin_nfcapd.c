$NetBSD$

use PATH_MAX instead of MAXPATHLEN if available

--- bin/nfcapd.c.orig	2012-03-09 18:25:51.000000000 +0000
+++ bin/nfcapd.c
@@ -72,6 +72,7 @@
 #include <sys/mman.h>
 #include <string.h>
 #include <dirent.h>
+#include <limits.h>
 
 #ifdef PCAP
 #include "pcap_reader.h"
@@ -743,7 +744,12 @@ int main(int argc, char **argv) {
  
 char	*bindhost, *filter, *datadir, pidstr[32], *launch_process;
 char	*userid, *groupid, *checkptr, *listenport, *mcastgroup, *extension_tags;
-char	*Ident, *pcap_file, pidfile[MAXPATHLEN];
+char	*Ident, *pcap_file;
+#ifdef PATH_MAX
+char pidfile[PATH_MAX];
+#else
+char pidfile[MAXPATHLEN];
+#endif
 struct stat fstat;
 srecord_t	*commbuff;
 packet_function_t receive_packet;
@@ -853,18 +859,20 @@ int		c;
 				break;
 			case 'P':
 				if ( optarg[0] == '/' ) { 	// absolute path given
-					strncpy(pidfile, optarg, MAXPATHLEN-1);
+					strncpy(pidfile, optarg, sizeof(pidfile));
+					pidfile[sizeof(pidfile) - 1] = 0;
 				} else {					// path relative to current working directory
+#ifdef PATH_MAX
+					char tmp[PATH_MAX];
+#else
 					char tmp[MAXPATHLEN];
-					if ( !getcwd(tmp, MAXPATHLEN-1) ) {
+#endif
+					if ( !getcwd(tmp, sizeof(tmp)) ) {
 						fprintf(stderr, "Failed to get current working directory: %s\n", strerror(errno));
 						exit(255);
 					}
-					tmp[MAXPATHLEN-1] = 0;
-					snprintf(pidfile, MAXPATHLEN - 1 - strlen(tmp), "%s/%s", tmp, optarg);
+					snprintf(pidfile, sizeof(pidfile), "%s/%s", tmp, optarg);
 				}
-				// pidfile now absolute path
-				pidfile[MAXPATHLEN-1] = 0;
 				break;
 			case 'R': {
 				char *p = strchr(optarg, '/');
