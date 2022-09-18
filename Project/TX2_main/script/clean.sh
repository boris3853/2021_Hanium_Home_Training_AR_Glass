#!/bin/bash

# remove catkin_make & CMake Cache if there are any
cache="catkin_make.cache CMakeCache.txt"
for c in ${cache}; do [ -e ../build/${c} ] && rm -r ../build/${c};
done;

# remove build files if there are any
dir="image_transport cv_bridge webcam"
for d in ${dir}; do [ -d ../build/${d} ] && rm -r ../build/${d};
done;

# remove image files from Image/PI

PIDIR="../image/PI1 ../image/PI2"
for d in ${PIDIR};do
    for f in ${d}/*.jpg; do [ -e ${f} ] && rm -r ${f}; done;
done;

echo "removed cache"
