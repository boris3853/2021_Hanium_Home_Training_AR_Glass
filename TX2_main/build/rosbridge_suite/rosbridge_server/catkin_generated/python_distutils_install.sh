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

echo_and_run cd "/home/kyung/21_hf271/TX2_main/src/rosbridge_suite/rosbridge_server"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/kyung/21_hf271/TX2_main/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/kyung/21_hf271/TX2_main/install/lib/python3/dist-packages:/home/kyung/21_hf271/TX2_main/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/kyung/21_hf271/TX2_main/build" \
    "/usr/bin/python3" \
    "/home/kyung/21_hf271/TX2_main/src/rosbridge_suite/rosbridge_server/setup.py" \
     \
    build --build-base "/home/kyung/21_hf271/TX2_main/build/rosbridge_suite/rosbridge_server" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/kyung/21_hf271/TX2_main/install" --install-scripts="/home/kyung/21_hf271/TX2_main/install/bin"
