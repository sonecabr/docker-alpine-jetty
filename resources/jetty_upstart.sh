#! /bin/bash
#
# Wrapper script to start Jetty and bypass an integration problem with
# salt stack (java process was not dettaching)
#

### BEGIN INIT INFO
# Provides:          jetty
# Required-Start:    $all
# Required-Stop:
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Jetty Servlet Containet
# Description:       This is the Jetty Java Servlet Container used do deploy
#                    Java Web Applications
### END INIT INFO

case "$1" in
    start|restart)
        /opt/jetty/bin/jetty.sh $1 > /opt/jetty/logs/init.log 2>&1
        RETVAL=$?
        ;;
    *)
       /opt/jetty/bin/jetty.sh $1
       RETVAL=$?
       ;;
esac

exit $RETVAL
