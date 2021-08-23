#!/bin/bash --login

set -euf -o pipefail

export AESARA_FLAGS="cxx=$GXX,blas__ldflags=-lmkl_rt -lpthread"
exec "$@"
