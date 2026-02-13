#!/bin/bash

touch /tmp/abc
if [ $? -eq 0 ]; then 
    echo " File has been created successfully "
    else
    echo " could not create a file "
    fi

    