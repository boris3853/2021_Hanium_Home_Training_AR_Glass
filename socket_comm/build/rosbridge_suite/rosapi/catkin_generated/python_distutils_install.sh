#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/kyung/21_hf271/socket_comm/src/rosbridge_suite/rosapi"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/kyung/21_hf271/socket_comm/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/kyung/21_hf271/socket_comm/install/lib/python3/dist-packages:/home/kyung/21_hf271/socket_comm/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/kyung/21_hf271/socket_comm/build" \
    "/usr/bin/python3" \
    "/home/kyung/21_hf271/socket_comm/src/rosbridge_suite/rosapi/setup.py" \
     \
    build --build-base "/home/kyung/21_hf271/socket_comm/build/rosbridge_suite/rosapi" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/kyung/21_hf271/socket_comm/install" --install-scripts="/home/kyung/21_hf271/socket_comm/install/bin"
