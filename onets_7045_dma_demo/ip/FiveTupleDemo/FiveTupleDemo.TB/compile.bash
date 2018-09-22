#!/bin/bash
set -euo pipefail
set -x
g++ -I. -std=c++11 $(find .. -name '*.cpp') -o FiveTupleDemo -D__USE_XOPEN2K8 -DHAVE_DECL_BASENAME=1
