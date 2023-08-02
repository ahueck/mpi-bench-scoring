#!/bin/bash

source bashrc

git clone --depth 1 --branch paper https://gitlab.com/MpiBugsInitiative/MpiBugsInitiative.git MpiBugsInitiative

cp tracer/* mbi/scripts/tools

cd MpiBugsInitiative/
git apply ../patch/mbi-script.patch

python3 ./MBI.py -c generate

mkdir -p "${MPI_ARG_TRACE_DIR}"


