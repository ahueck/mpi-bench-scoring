#!/bin/bash

source bashrc

git clone git clone --depth 1 https://github.com/tudasc/mpi-arg-usage.git

# install anaconda env

conda env create -f mpi-arg-usage/environment.yml

conda activate mpi_analysis
