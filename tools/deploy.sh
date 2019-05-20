#!/bin/bash

MAXFILESIZE=100000
configfile=deploy.cfg

source $configfile

profile=$NONPROD_PROFILE
path=$DEV_PATH
fname="../"

aws s3 cp --profile $profile $fname s3://$path --recursive --exclude "*tools*" --exclude "*git*" --exclude "README.*" --exclude "LICENSE"