#!/bin/bash

source ../mpi-arg-tracer/bashrc
source ../mpi-bench-scoring/bashrc
source bashrc

cd "$MBI_TRACER_EXEC_DIR"

if [[ $CI_SCORE_TEST == 1 ]]; then
  mv gencodes gencodes-all
  mkdir gencodes
  cp gencodes-all/CallParamCorrect_Comm_create.c gencodes/
fi

python3 ./MBI.py -x arg-tracer -t 1 -c run


# collect the static data

# set up code locations file
echo "Code,Language,Type,URL,Comment,SHA" > mbi.csv
echo "MpiBugsInitiative,C,git,https://gitlab.com/MpiBugsInitiative/MpiBugsInitiative.git,,34daf22e18e89e527a2c7b60fcd0579f1917abec" >> mbi.csv

cd $ MPI_ARG_USAGE_BASE 
python3 mpi_usage_analysis.py --output $MPI_ARG_TRACE_DIR/MBI-Static.csv --code_locations mbi.csv --repo_path $MBI_BASE/..
