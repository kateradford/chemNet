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
#SBATCH -J launcherCombined
#SBATCH -N 1
#SBATCH -n 4
#SBATCH -p normal
#SBATCH -o launcherCombined.o%j
#SBATCH -e launcherCombined.e%j
#SBATCH -t 00:15:00
#SBATCH -A TG-CHE190077

#------------------------------------------------------

#export LAUNCHER_PLUGIN_DIR=$LAUNCHER_DIR/plugins
#export LAUNCHER_RMI=SLURM
#export LAUNCHER_JOB_FILE=/home1/07020/dtuser/scratch/capstone/Kate/All/ChemNetworks-2-2/runAllJobs.sh
 
#$LAUNCHER_DIR/paramrun

/home1/07020/dtuser/work/capstone/Kate/All/ChemNetworks-2-2/runChem1Alt.sh

/home1/07020/dtuser/work/capstone/Kate/All/ChemNetworks-2-2/runChem2Alt.sh

/home1/07020/dtuser/work/capstone/Kate/All/ChemNetworks-2-2/runChem3Alt.sh

/home1/07020/dtuser/work/capstone/Kate/All/ChemNetworks-2-2/runChem4Alt.sh

