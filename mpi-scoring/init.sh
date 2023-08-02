#!/bin/bash

source bashrc

#git clone --depth 1 https://github.com/tudasc/mpi-arg-usage.git

# install anaconda env

#conda env create -f mpi-arg-usage/environment.yml
conda env create --name mpi_analysis

#source ~/anaconda3/etc/profile.d/conda.sh

source activate mpi_analysis
