#!/bin/bash
# Read in the file of environment settings
. /env
# Then run the CMD
exec "$@"