#!/bin/bash

dir="../src/cv_bridge ../src/webcam"

for d in ${dir}; do cp ${dir}/CMakeList.txt.TX2 ${dir}/CMakeList.txt; done;
cp ../src/cv_bridge/src/module.hpp.TX2 ../src/cv_bridge/src/module.hpp
