#!/bin/sh

        case "$1" in
        'start')
			echo "Starting ipf...\c"
			/usr/sbin/ipf -f /etc/ipf/ipf.conf
			echo "done."
			;;

        'stop')
			echo "Stopping ipf...\c"
			cp /etc/ipf/ipf.conf /etc/ipf/ipf.conf.bak
			/usr/sbin/ipfstat -i > /etc/ipf/ipf.conf
			/usr/sbin/ipf -F a
			# echo "done."
			;;
        *)
			echo "Usage: $0 { start | stop }"
			;;
        esac
