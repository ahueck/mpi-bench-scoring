#!/bin/bash

source bashrc

git clone https://github.com/tudasc/mpi-arg-usage.git

# install anaconda env

conda install -f mpi-arg-usage/environment.yml

conda activate mpi_analysis
