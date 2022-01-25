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

echo_and_run cd "/home/nvidia/21_hf271/TX2_main/src/rosbridge_suite/rosbridge_library"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/nvidia/21_hf271/TX2_main/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/nvidia/21_hf271/TX2_main/install/lib/python2.7/dist-packages:/home/nvidia/21_hf271/TX2_main/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/nvidia/21_hf271/TX2_main/build" \
    "/usr/bin/python2" \
    "/home/nvidia/21_hf271/TX2_main/src/rosbridge_suite/rosbridge_library/setup.py" \
     \
    build --build-base "/home/nvidia/21_hf271/TX2_main/build/rosbridge_suite/rosbridge_library" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/nvidia/21_hf271/TX2_main/install" --install-scripts="/home/nvidia/21_hf271/TX2_main/install/bin"
