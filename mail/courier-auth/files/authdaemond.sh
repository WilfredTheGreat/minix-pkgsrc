#! /bin/sh
#
# $NetBSD: authdaemond.sh,v 1.1.1.1 2002/01/22 22:00:22 jlam Exp $
#
# Courier user authentication daemon
#
# PROVIDE: authdaemond
# REQUIRE: DAEMON

if [ -e /etc/rc.subr ]
then
        . /etc/rc.subr
fi

name="authdaemond"
rcvar=${name}
daemon="@PREFIX@/libexec/courier/authlib/authdaemond"
pidfile="/var/authdaemon/pid"
required_files="@PKG_SYSCONFDIR@/authdaemonrc"

start_cmd="courier_doit start"
stop_cmd="courier_doit stop"

# Read the authdaemond config file to determine the actual command
# executed.  If "$version" is non-empty, then it contains the
# command name, otherwise, use the default of "authdaemond.plain".
# We read the config file in a subprocess to protect against shell
# environment pollution.
#
if [ -f @PKG_SYSCONFDIR@/authdaemonrc ]
then
	command=`
		. @PKG_SYSCONFDIR@/authdaemonrc
		if [ -n "${version}" ]
		then
			@ECHO@ @PREFIX@/libexec/courier/authlib/${version}
		else
			@ECHO@ @PREFIX@/libexec/courier/authlib/authdaemond.plain
		fi
	`
fi

courier_doit()
{
        action=$1
        case ${action} in
        start)  echo "Starting ${name}." ;;
        stop)   echo "Stopping ${name}." ;;
        esac

        @SETENV@ - ${daemon} ${action}
}

if [ -e /etc/rc.subr ]
then
        load_rc_config $name
        run_rc_command "$1"
else
        echo -n " ${name}"
        ${start_cmd}
fi
