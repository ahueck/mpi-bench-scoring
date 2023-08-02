#!/bin/bash

source bashrc

git clone git@github.com:tudasc/mpi-arg-usage.git

# install anaconda enn

conda install -f mpi-arg-usage/environment.yml

conda activate mpi_analysis
