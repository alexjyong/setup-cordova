#!/bin/sh -l
set -eu
apk add gcompat
/bin/sh -c "${1}"
