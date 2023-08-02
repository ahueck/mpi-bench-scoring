#!/bin/bash

source ../mpi-scoring/bashrc
source bashrc

# collect the static data

# set up code locations file
echo "Code,Language,Type,URL,Comment,SHA" > mbi.csv
echo "MpiBugsInitiative,C,git,https://gitlab.com/MpiBugsInitiative/MpiBugsInitiative.git,,34daf22e18e89e527a2c7b60fcd0579f1917abec" >> mbi.csv

mkdir -p $MPI_ARG_TRACE_DIR/static_output

cd $MPI_ARG_USAGE_BASE 
python3 mpi_usage_analysis.py --output $MPI_ARG_TRACE_DIR/MBI-Static.csv --code_locations mbi.csv --repo_path $MBI_BASE/..
