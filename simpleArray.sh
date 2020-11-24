#!/bin/sh
#SBATCH -J simpleArray          # Job name
#SBATCH -o simpleArray.%jo      # Name of stdout output file
#SBATCH -e simpleArray.%je      # Name of stderr error file
#SBATCH -p normal          # Queue (partition) name
#SBATCH -N 1               # Total # of nodes (must be 1 for serial)
#SBATCH -n 1               # Total # of mpi tasks (should be 1 for serial)
#SBATCH -t 01:30:00        # Run time (hh:mm:ss)
#SBATCH -A TG-CHE190077    # Allocation name (req'd if you have more than 1)

for task in 1 2 3 4
do
echo $task
done
