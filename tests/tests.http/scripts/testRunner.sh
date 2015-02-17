#!/bin/bash

#
# *******************************************************************************
# * Copyright (C)2014, International Business Machines Corporation and *
# * others. All Rights Reserved. *
# *******************************************************************************
#

ex=$@

if [ -z "$ex" ]; then
    echo "No executable found"
    exit 1
fi

ret=$($ex 2>&1 | grep TEST_ERROR)

if [ ! -z "$ret" ]; then
    echo "ERROR: Test Failed"
    exit 1
fi


echo "Test Passed"