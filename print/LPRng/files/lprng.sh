#!/bin/sh
#
# $NetBSD$

# Stop BSD lpd if it is running.
#
if [ -f /var/run/lpd.pid ]; then
	kill `@@CAT@@ /var/run/lpd.pid`
fi

# Start LPRng lpd if it exists.
#
if [ -x @@PREFIX@@/sbin/lpd ]; then
	@@ECHO@@ -n ' LPRng';
	@@PREFIX@@/sbin/lpd
fi
