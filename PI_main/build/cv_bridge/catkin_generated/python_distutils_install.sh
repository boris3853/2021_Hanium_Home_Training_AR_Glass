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

echo_and_run cd "/home/pi/21_hf271/PI_main/src/cv_bridge"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/pi/21_hf271/PI_main/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/pi/21_hf271/PI_main/install/lib/python2.7/dist-packages:/home/pi/21_hf271/PI_main/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/pi/21_hf271/PI_main/build" \
    "/usr/bin/python2" \
    "/home/pi/21_hf271/PI_main/src/cv_bridge/setup.py" \
    egg_info --egg-base /home/pi/21_hf271/PI_main/build/cv_bridge \
    build --build-base "/home/pi/21_hf271/PI_main/build/cv_bridge" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/pi/21_hf271/PI_main/install" --install-scripts="/home/pi/21_hf271/PI_main/install/bin"
