#!/bin/bash

source ../mpi-scoring/bashrc
source bashrc

source activate $ENV_NAME

# collect the static data

# set up code locations file
echo "Code,Language,Type,URL,Comment,SHA" > cobe.csv
echo "MPI-Corrbench,C,git,https://github.com/tudasc/MPI-Corrbench.git,,c89a836b3ea25df675bb6e904418b29ce1d4b548" >> cobe.csv

mkdir -p $MPI_ARG_TRACE_DIR/static_output

cd $MPI_ARG_USAGE_BASE 
python3 mpi_usage_analysis.py --output $MPI_ARG_TRACE_DIR/Cobe-Static.csv --code_locations cobe.csv --repo_path $MPI_CORRBENCH_BASE/..
