#!/bin/bash

source bashrc

source activate $ENV_NAME

# the output contains one file per process bot we consider it all together

cat $COBE_FILES/mpi-arg-trace-*.csv $COBE_FILES/cobe_dynamic.csv
cat $MBI_FILES/mpi-arg-trace-*.csv $MBI_FILES/mbi_dynamic.csv

# the full hpc applications dataset to score against
tar -xzf mpi-arg-usage/output/output.csv.tar.gz $HPC_DATA_DIR

# merge static and dynamic data

python3 merge_dynamic_data.py --output $MBI_FILES/merged_mbi.csv --static $MBI_FILES/MBI-Static.csv --dynamic $MBI_FILES/mbi_dynamic.csv
python3 merge_dynamic_data.py --output $COBE_FILES/merged_cobe.csv --static $COBE_FILES/Cobe-Static.csv --dynamic $COBE_FILES/cobe_dynamic.

