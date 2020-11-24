#!/bin/bash
#
# Simple SLURM script for submitting multiple serial
# jobs (e.g. parametric studies) using a script wrapper
# to launch the jobs.
#
# To use, build the launcher executable and your
# serial application(s) and place them in your WORKDIR
# directory.  Then, edit the CONTROL_FILE to specify 
# each executable per process.
#-------------------------------------------------------
#-------------------------------------------------------
# 
#         <------ Setup Parameters ------>
#
#SBATCH -J simpleArraySlurm 
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -p normal
#SBATCH -o simpleArraySlurm.%jo
#SBATCH -e simpleArraySlurm.%je
#SBATCH -t 00:15:00
#          <------ Account String ----->
#SBATCH -A TG-CHE190077
#------------------------------------------------------

module load launcher

for task in 1 2 3 4
do
echo "task $task"
done > jobfile  

export LAUNCHER_PLUGIN_DIR=$LAUNCHER_DIR/plugins
export LAUNCHER_RMI=SLURM
export LAUNCHER_JOB_FILE=jobfile
 
$LAUNCHER_DIR/paramrun

# works if remove "> jobfile" and LAUNCHER_JOB_FILE line
