#!/bin/bash

#This is slow script
# It converts from CR2 (raw) images to jpg 
for pic in *.CR2; 
do      
    darktable-cli "$pic" "$(basename ${pic%.CR2}.jpg)";
done



