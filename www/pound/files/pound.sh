#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# Pound - reverse proxy, load balancer and HTTPS web front-end
#
# PROVIDE: pound
# REQUIRE: DAEMON

. /etc/rc.subr

name="pound"
rcvar=${name}
command="@PREFIX@/sbin/${name}"
pidfile="@VARBASE@/run/${name}.pid"
command_args="-p ${pidfile}"
required_files="@PKG_SYSCONFDIR@/pound.cfg"

load_rc_config $name
run_rc_command "$1"
