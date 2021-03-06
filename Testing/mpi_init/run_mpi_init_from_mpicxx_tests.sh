#!/bin/bash

source ../etc/mpivars.sh || exit 1

${WI4MPI_ROOT}/bin/mpicxx mpi_init.cpp -o mpi_init.mpicxx
${WI4MPI_MPRUN} ${WI4MPI_NPROC} ${WI4MPI_NCORE} ${WI4MPI_PARTITION} ${WI4MPI_EXTRA_OPTS} ./mpi_init.mpicxx
