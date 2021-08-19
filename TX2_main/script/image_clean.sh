#!/bin/bash

# remove image files from Image/PI

PIDIR="../image/PI1 ../image/PI2"
for d in ${PIDIR};do
    for f in ${d}/*.jpg; do [ -e ${f} ] && rm -r ${f}; done;
done;

echo "removed images"
