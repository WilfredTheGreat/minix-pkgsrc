$NetBSD$

--- mozilla/media/libsydneyaudio/src/sydney_audio_pulseaudio.c.orig	2012-04-20 22:40:17.000000000 +0000
+++ mozilla/media/libsydneyaudio/src/sydney_audio_pulseaudio.c
@@ -29,7 +29,9 @@
 #include <stdio.h>
 #include <string.h>
 #include <pthread.h>
+_Pragma("GCC visibility push(default)")
 #include <pulse/pulseaudio.h>
+_Pragma("GCC visibility pop")
 #include "sydney_audio.h"
 
 /* Pulseaudio implementation based heavily on sydney_audio_alsa.c */
