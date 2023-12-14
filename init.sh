#!/bin/sh
set -ue
rundir=$(cd -P -- "$(dirname -- "$0")" && printf '%s\n' "$(pwd -P)")
cd "$rundir"

node SH_Backend/index.js & npm --prefix SH_Frontend start
